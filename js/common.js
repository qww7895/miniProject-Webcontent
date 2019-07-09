
var isIE = (navigator.appName.indexOf("Microsoft") != -1) ? 1 : 0;
var isSF = navigator.userAgent.toLowerCase().indexOf("safari") != -1;
/*
if(typeof(document.getElementsByClassName) !== "function") {
	document.getElementsByClassName = function(className) {
		var arr = [];
		var ele = document.getElementsByTagName("*");
		var cnt = ele.length;
		for(var i=0;i<cnt;i++) {
			if((" "+ele[i].className+" ").indexOf(" "+className+" ") > -1) {
				arr.push(ele[i]);
			}
		}
		return arr;
	};
}
*/
function SetCookie(name, value, expires, path, domain, secure) { //expires : 초
	var date = new Date();
	date.setSeconds(date.getSeconds() + expires);

	document.cookie= name + "=" + escape(value) + "; path=" + ((path) ? path : "/") +
	((expires) ? "; expires=" + date.toGMTString() : "") +
	((domain) ? "; domain=" + domain : "") +
	((secure) ? "; secure" : "");
}

function GetCookie(name) {
	var dc = document.cookie;
	var prefix = name + "=";
	var begin = dc.indexOf("; " + prefix);
	if (begin == -1) {
		begin = dc.indexOf(prefix);
		if (begin != 0) return null;
	} else {
		begin += 2;
	}
	var end = document.cookie.indexOf(";", begin);
	if (end == -1) {
		end = dc.length;
	}
	return unescape(dc.substring(begin + prefix.length, end));
}

function DelCookie(name, path, domain)
{
    if (GetCookie(name)) {
        document.cookie = name + "=" +
            ((path) ? "; path=" + path : "") +
            ((domain) ? "; domain=" + domain : "") +
            "; expires=Thu, 01-Jan-70 00:00:01 GMT";
    }
}

function OpenDialog(nLink, nWin, nWidth, nHeight, xPos, yPos) {
	if(typeof nLink == "object") url = nLink.href;
	else url = nLink;
	var qResult = window.showModalDialog( url, nWin, "dialogwidth:"+nWidth+"px;dialogheight:"+nHeight+"px;toolbar:no;location:no;help:no;directories:no;status:no;menubar:no;scroll:no;resizable:no");
}

function OpenWindow(nLink, nTarget, nWidth, nHeight, xPos, yPos) {
	if(typeof nLink == "object") url = nLink.href;
	else url = nLink;

	adjX = xPos ? xPos : (window.screen.width/2 - nWidth/2);
	adjY = yPos ? yPos : (window.screen.height/2 - nHeight/2 - 50);
	var qResult = window.open( url, nTarget, "width="+nWidth+", height="+nHeight+",left="+adjX+",top="+adjY+",toolbar=no,status=yes,scrollbars=no,resizable=no");
	//return qResult;
}

function OpenWindows(nLink, nTarget, nWidth, nHeight, xPos, yPos) {
	if(typeof nLink == "object") url = nLink.href;
	else url = nLink;

	adjX = xPos ? xPos : (window.screen.width/2 - nWidth/2);
	adjY = yPos ? yPos : (window.screen.height/2 - nHeight/2 - 50);
	var qResult = window.open( url, nTarget, "width="+nWidth+", height="+nHeight+",left="+adjX+",top="+adjY+",toolbar=no,status=yes,scrollbars=1,resizable=no");
	//return qResult;
}

function ConfirmAction(obj) {
	if(confirm(obj.name + "하시겠습니까?")) {
		location.href = obj.href;
	}
}

function BtnConfirmGo(obj, url) {
	var msg;
	if(typeof obj == "object") msg = obj.value;
	else msg = obj;
	if(confirm(msg + "하시겠습니까?")) {
		location.href = url;
	}
}

function Go(url) {
	location.href = url;
}

function IfGo(msg, url, url2) {
	if(confirm(msg)) Go(url);
	else {
		if(!url2) return false;
		else Go(url2);
	}
	return true;
}

function ConfirmCheckGo(f, n, url, msg) {
    var idx = GetFormValue(f, n);
    if(idx == "") {
        alert("선택 항목이 없습니다.");
    } else {
        if(confirm(msg)) {
            location.href = url + idx;
        }
    }
}

function ResizeImage(el, w, h) {
	var img = new Image();
	img.src = el.src;

	if(el.width > img.width) el.width = img.width;
	if(el.height > img.height) el.height = img.height;

	var sheight = el.width * img.height / img.width;
	var swidth = el.height * img.width / img.height;

	if(swidth < el.width) el.width = swidth;
	if(sheight < el.height) el.height = sheight;
}

function ShowLayer(n) {
	var el = document.getElementById(n);
	if(el) {
		el.style.display = 'block';
	}
}

function HideLayer(n) {
	var el = document.getElementById(n);
	if(el) {
		el.style.display = 'none';
	}
}

function AutoLayer(n) {
	var el = document.getElementById(n);
	if(!el) return;
	if(el.style.display == 'none') {
		el.style.display = 'block'
	} else {
		el.style.display = 'none'
	}
}

function validate(el) {
	return true;
}

function SetElementValue(element, v, sep) {
	if(!element) return false;
	switch(element.type) {
		case 'text':
		case 'password':
		case 'hidden':
			element.value = v;
			break;
		case 'textarea':
			element.text = v;
			break;
		case 'checkbox':
			if(element.value == v) element.checked = true;
			break;
		case 'select-one':
			for(var i=0; i<element.options.length; i++) if(element.options[i].value == v) element.options[i].selected = true;
			break;
		default:
			if(sep) {
				var val = v.split(sep);
				for(var i=0; i<element.length; i++) {
					for(var j=0; j<val.length; j++) {
						if(element[i].value == val[j])  element[i].checked = true;
					}
				}
			}
			else {
				for(var i=0; i<element.length; i++) {
					if(element[i].value == v) element[i].checked = true;
				}
			}
			break;
	}
}

function SetFormValue(f, n, v, sep) {

	var f = document.forms[f];
	if(!f || !f[n]) return false;
	switch(f[n].type) {
		case 'text':
		case 'password':
		case 'hidden':
			f[n].value = v;
			break;
		case 'textarea':
			f[n].text = v;
			break;
		case 'checkbox':
			if(f[n].value == v) f[n].checked = true;
			break;
		case 'select-one':
			for(var i=0; i<f[n].options.length; i++) if(f[n].options[i].value == v) f[n].options[i].selected = true;
			break;
		default:
			if(sep) {
				var val = v.split(sep);
				for(var i=0; i<f[n].length; i++) {
					for(var j=0; j<val.length; j++) {
						if(f[n][i].value == val[j])  f[n][i].checked = true;
					}
				}
			}
			else {
				for(var i=0; i<f[n].length; i++) if(f[n][i].value == v) f[n][i].checked = true;
			}
			break;
	}
}

function GetFormValue(f, n) {
	var f = document.forms[f];
	if(!f || !f[n]) return false;
	switch(f[n].type) {
		case 'text':
		case 'file':
		case 'password':
		case 'hidden':
			return f[n].value;
			break;
		case 'textarea':
			return f[n].text;
			break;
		case 'checkbox':
			if(f[n].checked == true) return f[n].value;
			break;
		case 'select-one':
			for(var i=0; i<f[n].options.length; i++) {
				if(f[n].options[i].selected == true) {
					return f[n].options[i].value;
				}
			}
			break;
		default:
			var arr = new Array();
			var j = 0;
			for(var i=0; i<f[n].length; i++) {
				if(f[n][i].checked == true) {
					 arr[j] = f[n][i].value;
					 j++;
				}
			}
			return arr.join(",");
			break;
	}
	return false;
}

var AUTO_CHECK_STATUS = true;

function AutoCheck(f, n, el) {
	var f = document.forms[f];
	if(!f || !f[n]) return;
	if(el) AUTO_CHECK_STATUS = el.checked;
	if(typeof(f[n]) == "object") {
		if(f[n].length > 0) {
			for(var i=0; i<f[n].length; i++) {
				f[n][i].checked = AUTO_CHECK_STATUS;
			}
		} else {
			f[n].checked = AUTO_CHECK_STATUS;
		}
		if(AUTO_CHECK_STATUS == true) {
			AUTO_CHECK_STATUS = false;
		} else {
			AUTO_CHECK_STATUS = true;
		}
	}
}
function ToggleCheck(el, name) {
	var elements = document.getElementsByName(name);
	for(var i=0; i<elements.length; i++) {
		elements[i].checked = el.checked;
	}
}

function CheckGo(f, n, url, msg, confMsg) {
	var idx = GetFormValue(f, n);
	if(idx == "") {
		alert(msg);
	} else {
		if(confMsg && !confirm(confMsg)) return;
		if(url.indexOf("javascript:") != -1) {
			eval(url.replace("javascript:", ""));
		} else {
			location.href = url + idx;
		}
	}
}

/*
function CheckGo(f, n, url, msg) {
	var idx = GetFormValue(f, n);
	if(idx == "") {
		alert(msg);
	} else {
		location.href = url + idx;
	}
}
*/

function ResizeIframe(n) {
	var nodes = document.body.childNodes;
	var preHeight = 0;
	for(var x in nodes) if(nodes[x].offsetHeight) preHeight += nodes[x].offsetHeight;
	
	var h;
	if(el = parent.document.getElementById(n)) {
		el.height = preHeight;
		if(isIE) h = document.body.scrollHeight;
		else h = document.documentElement.scrollHeight + 1;		
		
		if(h > 10) el.height = h;
		else el.height = 0;
	}
	
}

function GoNext(fm,pos,size) {

	if(fm.elements[0].name == "PHPSESSID") {
		pos++;
	}

	next_pos = pos + 1;
	value = fm.elements[pos].value;
	len = value.length;
	is_num = Number(value);

	if(!is_num) {
		if((len > 0) && (value != '0') && (value != '00') && (value != '000')) {
			alert('숫자를 넣어주세요');
			fm.elements[pos].select();
			fm.elements[pos].focus();
			return false;
		}
	}

	if(len == size) {
		fm.elements[next_pos].focus();
		return true;
	}
}

function MoveNext(el, next, size) {
	var len = el.value.length;
	if(len == size) {
		next.focus();
		return true;
	}
}

function IsNumeric(sText)
{
   var ValidChars = "0123456789.";
   var IsNumber=true;
   var Char;

   for (i = 0; i < sText.length && IsNumber == true; i++) {
      Char = sText.charAt(i);
      if (ValidChars.indexOf(Char) == -1) {
         IsNumber = false;
      }
   }

   return IsNumber;
}

function OnlyNumber(el) {
	if(!IsNumeric(el.value)) {
		el.value = "";
		el.focus();
	}
}

function PhotoViewer(el) {
	var photo = new PhotoLayer();
	photo.Initialized();
	photo.doPhotoClick(el);
}

function DrawBar(cnt, max, color, width) {
	var percent;
	if(!width) width = 400;
	if(max > 0) {
		percent = Math.floor((cnt / max) * 100);
	} else {
		percent = 0;
	}
	var other = 100 - percent;
	document.write("<table align='left' width='" + width + "' cellpadding=0 cellspacing=0 height=10><tr><td width='"+percent+"%' background='../html/images/stat/s_bg_"+color+".gif'></td><td width='"+ other +"%'></td></tr></table>");
}

/* example : <script>getBarchart(230, 103, "red", "orange", "100%", 20, 2, true);</script> */
function getBarchart(max, value, color, bgcolor, width, height, point, displayValue, displayAll) {
    if(!width) width = "100%";
    if(!height) height = 20;
    if(!color) color = "#ff0000";
    if(!bgcolor) bgcolor = "orange";
    if(!point) point = 0;
    if(!displayValue) displayValue = false;
    if(!displayAll) displayAll = false;

    var rate = max > 0 ? (parseInt(value) / max) * 100 : 0;

    var bar = '<table width="' + width + '" cellpadding="0" cellspacing="0" style="table-layout:fixed;">';
    bar += '<tr>';
    if(rate > 0) bar += '<td width="' + Math.ceil(rate) + '%"><div style="height:' + (height/2 - 1) + 'px;background:' + color + ';filter:alpha(opacity=50);opacity:0.5;"><!--ie--></div></td>';
    bar += '<td height="' + (height/2 - 1) + '" bgcolor="' + bgcolor + '"><!--ie--></td>';
    bar += '</tr>';
    bar += '<tr>';
    if(rate > 0) bar += '<td width="' + Math.ceil(rate) + '%"><div style="height:' + (height/2 + 1) + 'px;background:' + color + ';filter:alpha(opacity=100);opacity:1;"><!--ie--></div></td>';
    bar += '<td height="' + (height/2 + 1) + '" bgcolor="' + bgcolor + '"><!--ie--></td>';
    bar += '</tr>';
    bar += '<tr>';
    if(rate > 0) bar += '<td></td>';
    bar += '<td align="left" class="_grp_container_">'
        + ' <div style="position:relative;">'
        + '     <div class="_grp_tip_" style="position:absolute;top:-' + (height > 10 ? Math.round(height/2) + 5 : height) + 'px;left:1px;font-size:10px;font-family:굴림;">'
        + '<nobr>' + (displayAll ? (displayValue ? value+ '(' + number_format(rate, point) + '%)' : number_format(rate, point) + '%') : "") + '</nobr>'
        + '     </div>'
        + ' </div>'
        + '</td>'
        + '</tr>'
        + '</table>';
    document.write(bar);
}

var _patchBarchart = function() {
    var tds = document.getElementsByTagName("td");
    for(var i=0; i<tds.length; i++) {
        if(tds[i].className == "_grp_container_") {
            var ptip = tds[i];
            var tip = ptip.getElementsByTagName("div")[1];
            if(tip.offsetLeft + tip.offsetWidth > ptip.offsetWidth) {
                tip.style.left = (ptip.offsetWidth - tip.offsetWidth) + "px";
            }
        }
    }
}
function patchBarchart() {
    if(window.attachEvent) window.attachEvent("onload", _patchBarchart);
    else if(window.addEventListener) window.addEventListener("load", _patchBarchart, false);
}

function initTinyMCE(theme, toolbar, els) {
	initEditor(theme, toolbar, els);
}
var Editors = new Array();
function initEditor(theme, toolbar, els) {
	var undef;
	if(toolbar === undef) toolbar = true;

	$(document).ready(function() {
		var textareas = document.getElementsByTagName("textarea");
		for(var i=0; i<textareas.length; i++) {
			if(!textareas[i].getAttribute("id")) textareas[i].setAttribute("id", textareas[i].getAttribute("name"));
			if(textareas[i].className.indexOf("NoEditor") != -1) continue;

			var myeditor = new cheditor();

			if(theme == "advanced") myeditor.templatePath = myeditor.config.editorPath + "template_advanced.xml";
			else if(theme == "full") myeditor.templatePath = myeditor.config.editorPath + "template_full.xml";
			else if(theme == "simple") myeditor.templatePath = myeditor.config.editorPath + "template_simple.xml";
			myeditor.config.editorWidth = (textareas[i].offsetWidth - 4)+ "px";
			myeditor.config.editorHeight = textareas[i].offsetHeight + "px";
			myeditor.config.useImage = false;
			myeditor.config.useMap = false;
			myeditor.inputForm = textareas[i].getAttribute("id");
			myeditor.run();

			Editors[textareas[i].getAttribute("id")] = myeditor;
		}
	});
}
function iContent(url, tgtName, width, height) {
	if(!tgtName) tgtName = "content";
	var editor = Editors[tgtName];
	if(!editor) {
		alert("iContent Error :대상을 지정하세요.");
		return;
	}

	if(editor.cheditor.mode != "rich") { alert("입력모드로 변경하세요."); return; }
	//	if(editor.cheditor.mode != "rich") { editor.switchEditorMode("rich"); }

	var ext = url.substring(url.lastIndexOf(".") + 1, url.length);
	var widthConv = !width ? 400 : width;
	var heightConv = !height ? 300 : height;

	var able = true;
	var img = false;
	switch (ext.toLowerCase()) {
		case "gif":
		case "jpg":
		case "jpeg":
		case "png":
		case "bmp":
			var img = new Image();
			img.src = url + "?d=" + (new Date()).getTime();
			img.onload = function() {
				if(isNaN(width)) width = 0;
				if(isNaN(height)) height = 0;
				var size = { width:this.width, height:this.height };
				if(!width && !height) {
					width = 730;
					if(width > size['width']) width = size['width'];
					size['height'] = Math.round(size['height'] * (width / size['width']));
					size['width'] = width;
				}
				if(width && !height) {
					if(width > size['width']) width = size['width'];
					size['height'] = Math.round(size['height'] * (width / size['width']));
					size['width'] = width;
				} else if(!width && height) {
					if(height > size['height']) height = size['height'];
					size['width'] = Math.round(size['width'] * (height / size['height']));
					size['height'] = height;
				} else if(width && height) {
					size['width'] = width;
					size['height'] = height;
				}
				width = size['width'];
				height = size['height'];

				var h = '<img src="'+ url +'" width="' + width + '" height="' + height + '">';
				if(isIE) editor.insertContents(h);
				else editor.insertHTML(h);
			}
			img.onerror = function() {
				alert("파일 삽입에 실패하였습니다.");
			}
			return;
		case "swf":
			h = '<object width="' + widthConv + '" height="' + heightConv + '" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0">'
			+ '<param name="src" value="' + url + '" />'
			+ '<embed width="' + widthConv + '" height="' + heightConv + '" type="application/x-shockwave-flash" src="' + url + '"></embed></object>';
			break;
		case "mp4":
		case "flv":
			h = '<object width="' + widthConv + '" height="' + heightConv + '" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0">'
			+ '<param name="src" value="/html/cheditor/moxieplayer.swf" />'
			+ '<param name="flashvars" value="url=' + url + '" />'
			+ '<param name="allowfullscreen" value="true" />'
			+ '<param name="allowscriptaccess" value="true" />'
			+ '<param name="play" value="true" />'
			+ '<embed  width="' + widthConv + '" height="' + heightConv + '"  type="application/x-shockwave-flash" src="/html/cheditor/moxieplayer.swf" flashvars="url=' + url + '" allowfullscreen="true" allowscriptaccess="true" play="true" />'
			+ '</object>';
			break;
		case "shockwave":
			h = '<object width="' + widthConv + '" height="' + heightConv + '" classid="clsid:166b1bca-3f9c-11cf-8075-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/director/sw.cab#version=8,5,1,0">'
			+ '<param name="src" value="' + url + '" />'
			+ '<param name="sound" value="true" />'
			+ '<param name="progress" value="true" />'
			+ '<param name="autostart" value="true" />'
			+ '<param name="swstretchstyle" value="none" />'
			+ '<param name="swstretchhalign" value="none" />'
			+ '<param name="swstretchvalign" value="none" />'
			+ '<embed width="' + widthConv + '" height="' + heightConv + '" type="application/x-director" src="' + url + '" sound="true" progress="true" autostart="true" swstretchstyle="none" swstretchhalign="none" swstretchvalign="none" />'
			+ '</object>';
			break;
		case "mov":
		case "qt":
			h = '<object width="' + widthConv + '" height="' + heightConv + '" classid="clsid:02bf25d5-8c17-4b23-bc80-d3488abddc6b" codebase="http://www.apple.com/qtactivex/qtplugin.cab#version=6,0,2,0">'
			+ '<param name="src" value="' + url + '" />'
			+ '<embed width="' + widthConv + '" height="' + heightConv + '" type="video/quicktime" src="' + url + '" />'
			+ '</object>';
			break;
		case "mpeg":
		case "wmv":
		case "wma":
		case "asf":
		case "mp3":
		case "avi":
		case "wmp":
			h = '<object classid="clsid:6bf52a52-394a-11d3-b153-00c04f79faa6"'
			+ ' codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701"'
			+ ' width="' + widthConv + '"'
			+ ' height="' + heightConv + '">'
			+ '<param name="URL" value="' + url + '" />'
			+ '<param name="allowFullScreen" value="true">'
			+ '<param name="rate" value="1" />'
			+ '<param name="balance" value="0" />'
			+ '<param name="currentPosition" value="0" />'
			+ '<param name="defaultFrame" />'
			+ '<param name="playCount" value="1" />'
			+ '<param name="autoStart" value="true" />'
			+ '<param name="currentMarker" value="0" />'
			+ '<param name="invokeURLs" value="-1" />'
			+ '<param name="baseURL" />'
			+ '<param name="volume" value="50" />'
			+ '<param name="mute" value="0" />'
			+ '<param name="uiMode" value="full" />'
			+ '<param name="stretchToFit" value="0" />'
			+ '<param name="windowlessVideo" value="0" />'
			+ '<param name="enabled" value="-1" />'
			+ '<param name="enableContextMenu" value="-1" />'
			+ '<param name="fullScreen" value="0" />'
			+ '<param name="SAMIStyle" />'
			+ '<param name="SAMILang" />'
			+ '<param name="SAMIFilename" />'
			+ '<param name="captioningID" />'
			+ '<param name="enableErrorDialogs" value="true" />'
			+ '<embed src="' + url + '" type="application/x-mplayer2" allowFullScreen="true" width="' + widthConv + '" height="' + heightConv + '" autostart="true"></embed>'
			+ '</object>';
			break;
		case "rmp":
		case "ra":
		case "rm":
			h = '<object width="' + widthConv + '" height="' + heightConv + '" classid="clsid:cfcdaa03-8be4-11cf-b84b-0020afbbccfa" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0">'
			+ '<param name="src" value="' + url + '" />'
			+ '<embed width="' + widthConv + '" height="' + heightConv + '" type="audio/x-pn-realaudio-plugin" src="' + url + '" />'
			+ '</object>';
			break;
		default:
			able = false;
			break;
	}

	if(able) {
		if(isIE) editor.insertContents(h);
		else editor.insertHTML(h);
	} else { alert("삽입 할 수 없는 형식입니다."); }
}

function call(url, id, callback) {

	//if(!id) id = "AJAX_DIV";
	var client = false;

	if(window.ActiveXObject) {
		try {
			client = new ActiveXObject("Msxml2.XMLHTTP");
		} catch(e) {
			try {
				client = new ActiveXObject("Microsoft.XMLHTTP");
			} catch(e) {}
		}
	} else {
		client = new XMLHttpRequest();
	}
	if(client) {
		client.onreadystatechange = function() {
			if(client.readyState == 4) {

				//출력레이어가 없을 경우 생성
				var el = document.getElementById(id);
				if(!el) {
					el = document.createElement("div");
					el.style.display = 'none';
					document.body.appendChild(el);
				}
				if(el) {
					if(el.tagName.toLowerCase() == "select") {
						el.innerHTML = client.responseText.replace(/\</g, "&lt;").replace(/\>/g, "&gt;");
						el.outerHTML = el.outerHTML.replace(/\&lt;/g, "<").replace(/\&gt;/g, ">");
					} else {
						//el.innerHTML(el, client.responseText);
						setHtml(el, client.responseText);
					}
					/*
					if(isIE && el.tagName.toLowerCase() == "select") {
						el.innerHTML = client.responseText.replace(/\</g, "&lt;").replace(/\>/g, "&gt;");
						el.outerHTML = el.outerHTML.replace(/\&lt;/g, "<").replace(/\&gt;/g, ">");
					} else {
						if(isIE && client.responseText.indexOf("<script") == 0) {
							el.innerHTML(el, "<span style='display:none;'>&nbsp;</span>" + client.responseText);
						} else {
							el.innerHTML(el, client.responseText);
						}
					}
					*/
				}

				if(callback) {
					try {
						if(typeof callback === "function") {
							callback(client.responseText);
						} else if(typeof callback === "string") {
							eval(callback + "(client.responseText)");
						}
					} catch(e) { alert(callback + " 함수가 없습니다."); }
				}

				//자바스크립트 실행 (defer는 IE 에서 실행되어 안씀)
				var scripts = el.getElementsByTagName("script");
				for(var i=0; i<scripts.length; i++) {
					eval(scripts[i].innerHTML.replace("<!--", "").replace("-->", ""));
				}
			}
		}
		var f;
		if(f = document.forms[url]) {
			var parameters = "";
			for(var i=0; i<f.elements.length; i++) {
				if(f.elements[i].name == "") continue;
				if(f.elements[i].type == "radio" || f.elements[i].type == "checkbox") {
					if(f.elements[i].checked == false) continue;
				}
				parameters += f.elements[i].name + "=" + encodeURI( f.elements[i].value ) + "&";
			}
			if(!f.action) f.action = location.href;
			client.open('POST', f.action, id ? true : false);
			client.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			client.setRequestHeader("Content-Length", parameters.length);
			client.setRequestHeader("Connection", "close");
			client.send(parameters);
		} else {
			client.open("GET", url, id ? true : false);
			client.send(null);
		}

		if(!id && client.readyState == 4) {
			return client.responseText;
		}
	}
}
function setHtml(el, html) {
	try {
		var tmpNode = document.createElement('div');
		tmpNode.innerHTML = html;

		var scriptNodes = tmpNode.getElementsByTagName('script');
		var scripts = new Array();
		while(scriptNodes.length) {
			var node = scriptNodes[0];
			scripts.push(node.text);
			node.parentNode.removeChild(node);
		}
		el.innerHTML = tmpNode.innerHTML;

		var head = document.getElementsByTagName('head')[0];
		while(scripts.length) {
			var scriptNode = document.createElement('script');
			scriptNode.type = 'text/javascript';
			scriptNode.text = scripts.shift();
			head.appendChild(scriptNode);
			head.removeChild(scriptNode);
		}
	} catch(e) {}
}

function docWrite(str) {
	document.write(str);
}

function playFlash(filename, width, height, id, trans, params, lock) {
	id = id ? id : "";
    document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="'+width+'" height="'+height+'" id="'+id+'" align="middle"><param name="allowScriptAccess" value="always" /><param name="movie" value="'+filename+'" /><param name="menu" value="false" /><param name="quality" value="high" /><param name="bgcolor" value="#ffffff" /><param name="wmode" value="'+trans+'" />' + (params ? '<param name="FlashVars" value="' + params + '" />' : "") + '<embed src="'+filename + (params ? '?' + params : "") +'" menu="false" quality="high" bgcolor="#ffffff" wmode="' + trans + '" width="'+width+'" height="'+height+'" name="'+id+'" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" /></object>');
}

function FlashChart(id, width, height, xmlurl, ftype) {
	var filename = "FlashChart.swf";
	if(ftype == "mini") filename = "FlashChartMini.swf";
	playFlash("/Web/lib/js/" + filename, width, height, id, "transparent", "xmlurl=" + escape(xmlurl));
}

function ToggleLayer(objName, tarName, addX, addY) {
	var obj = document.getElementById(objName);
	if(!obj) {
		alert(objName + ' 레이어가 존재하지 않습니다.');
		return;
	}

	var tar = tarName ? document.getElementById(tarName) : null;
	if(tar) {
		var curleft = curtop = 0;
		if (tar.offsetParent) {
			do {
				curleft += tar.offsetLeft;
				curtop += tar.offsetTop;
			} while (tar = tar.offsetParent);
		}
		obj.style.position = "absolute";
		obj.style.left = curleft + (addX ? parseInt(addX) : 0);
		obj.style.top = curtop + (addY ? parseInt(addY) : 0);
	}
	if(obj.style.display == "none") {
		obj.style.display = "block";
	} else {
		obj.style.display = "none";
	}
}

function ImageError(el, url) {

	if(url && url.toUpperCase() == "TEXTMODE") {
		if(el) el.parentNode.innerHTML = "<span><table width='" + (el.width * 1) + "' height='" + (el.height * 1)+ "' cellpadding='0' cellspacing='0' style='border:1px solid #f2f2f2;'><tr><td style='font-family:arial;color:#d0d0d0'>No Image.</td></tr></table></span>";
	} else {
		var noimg = new Image();
		noimg.src = url ? url : "/html/images/global/noimage.jpg";
		noimg.onerror = function() {
			alert("[개발 Debug] common.js - function ImageError() 오류 : \n" + noimg.src + ' 파일이 존재 하지 않습니다.');
			return false;
		}
		if(el) el.src = noimg.src;
	}
}

function addSelectOption(element, val, txt) {
	var opt = element.ownerDocument.createElement("option");
	opt.setAttribute("value", val);
	opt.appendChild(element.ownerDocument.createTextNode(txt));
	element.appendChild(opt);
}
function removeSelectOption(element, idx) {
	var opts = element.getElementsByTagName("option");
	if (idx < 0 || idx > (opts.length - 1)) return;
	element.removeChild(opts[idx]);
}

function p(el, type) {
	var attributes = new Array(); var i = 0;
	for(e in el) {
		if(!type && !el[e]) continue;
		attributes[i] = e + "=" + el[e];
		i++;
	}
	if(document.body) {
		document.body.innerHTML = "<div style='position:absolute;top:10px;left:10px;overflow:auto;width:95%;height:95%;background:#f7f7f7;z-index:100'>" + attributes.join("<br>") + "</div>";
	} else {
		alert(attributes.join("\n"));
	}
}

function pngfilter(el) {

	if (/MSIE (5\.5|6\.0)/.test(navigator.userAgent)) {
		// 쓸데 없어 보이지만 중요함
		if(el.width != 0) {
			el.width = el.width;
			el.height = el.height;
		}

		var img = new Image();
		img.src = el.src;
		el.src = "../html/css/blank.gif";
		el.style.filter = 'progid:DXImageTransform.Microsoft.AlphaImageLoader(src="'+ img.src +'",sizingMethod="scale")';
	}
}

function iepngfix(element) {
	if (/MSIE (5\.5|6\.0)/.test(navigator.userAgent)) {
		if(element) var imgs = element.getElementsByTagName("IMG");
		else var imgs = document.getElementsByTagName("IMG");
		for(var i=0; i<imgs.length; i++) {
			if(imgs[i].src.substring(imgs[i].src.length - 4).toLowerCase() == ".png") {
				pngfilter(imgs[i]);
			}
		}
	}
}

function changeYear(element, d, num, limit) {
	if(!element) return;
	if(!num) num = 5;
	var year = parseInt(element.value * 1);
	var org = d ? d : element.value;
	if(!year) year = !d ? new Date().getFullYear() : d;
	year = parseInt(year * 1);
	var head = "";
	if(element.options.length > 0) {
		head = element.options[0].value == "" ? element.options[0].text : "";
	}
	var pattern = /[^0-9]/;
	var add = "";
	if(element.options.length > 1) {
		var idx = 0;
		for(var i=0; i<element.options.length; i++) {
			if(element.options[i].value) { idx = i; break; }
		}
		add = pattern.test(element.options[idx].text);
	}
	element.options.length = 0; var j = 0;
	if(head) {
		element.options[0] = new Option(head, "", false);
		j++;
	}

	var max = year + num;
	if(limit && max > limit) max = limit;
	for (var i=year-num; i<=max; i++, j++) {
		element.options[j] = new Option(i + (add ? "년" : ""), i, false);
		if (i == org) element.options[j].selected = true;
	}
}

Offset = function(element) {
	this.obj = element;
	this.left;
	this.top;
	this.height;
	this.width;
	this.centerLeft;
	this.getOffset();
}
Offset.prototype.getOffset = function() {
	var obj = this.obj;
	var top = left = 0;
	if (obj.offsetParent) {
		do {
			top += obj.offsetTop;
			left +=
			obj.offsetLeft;
		} while(obj = obj.offsetParent);
	}
	this.left = left;
	this.top = top;
	this.width = this.obj.offsetWidth;
	this.height = this.obj.offsetHeight;
	this.centerLeft = this.left + Math.round(this.width/2);
}

function number_format( number, decimals, dec_point, thousands_sep ) {
	// +   original by: Jonas Raoni Soares Silva (http://www.jsfromhell.com)
	// +   improved by: Kevin van Zonneveld (http://kevin.vanzonneveld.net)
	// *     example 1: number_format(1234.5678, 2, '.', '');
	// *     returns 1: 1234.57

	var i, j, kw, kd, km;

	// input sanitation & defaults
	if( isNaN(decimals = Math.abs(decimals)) ){
		decimals = 0;
	}
	if( dec_point == undefined ){
		dec_point = ".";
	}
	if( thousands_sep == undefined ){
		thousands_sep = ",";
	}

	i = parseInt(number = (+number || 0).toFixed(decimals)) + "";

	if( (j = i.length) > 3 ){
		j = j % 3;
	} else{
		j = 0;
	}

	km = (j ? i.substr(0, j) + thousands_sep : "");
	kw = i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + thousands_sep);
	kd = (decimals ? dec_point + Math.abs(number - i).toFixed(decimals).slice(2) : "");

	return km + kw + kd;
}

function addslashes( str ) {
    return str.replace('/(["\'\])/g', "\\$1").replace('/\0/g', "\\0");
}

function strip_tags(input,allowed){allowed=(((allowed||"")+"").toLowerCase().match(/<[a-z][a-z0-9]*>/g)||[]).join('');var tags=/<\/?([a-z][a-z0-9]*)\b[^>]*>/gi,commentsAndPhpTags=/<!--[\s\S]*?-->|<\?(?:php)?[\s\S]*?\?>/gi;return input.replace(commentsAndPhpTags,'').replace(tags,function($0,$1){return allowed.indexOf('<'+$1.toLowerCase()+'>')>-1?$0:'';});}


function in_array(needle, haystack, strict) {
    var found = false, key, strict = !!strict;
    for (key in haystack) {
        if ((strict && haystack[key] === needle) || (!strict && haystack[key] == needle)) {
            found = true;
            break;
        }
    }
    return found;
}

var descpreload = new Image(); descpreload.src = "/html/images/admin/common/s_desc.gif";
var ascpreload = new Image(); ascpreload.src = "/html/images/admin/common/s_asc.gif";
function ListSort(element, ord) {
	if(element) {
		document.forms['form1']['ord'].value = element.getAttribute("id").replace("CL_", "") + " " + (ord.indexOf(" ASC") != -1 ? "DESC" : "ASC");
		document.forms['form1'].submit();
	} else {
		var arr = ord.split(" ");
		var element = document.getElementById("CL_" + arr[0])
		if(element && arr.length == 2) {
			var arrow = arr[1] == "ASC" ? ' <img src="/html/images/admin/common/s_asc.gif">' : ' <img src="/html/images/admin/common/s_desc.gif">';
			element.innerHTML = element.innerHTML + arrow;
		}
	}
}

function removeAttr(formName, keys, type) {
	var f = document.forms[formName];
	if(!f) return;
	type = !type ? "required" : type;
	var arr = keys.replace(/ +/g, "").split(",");

	for(var i=0; i<arr.length; i++) {
		if(f[arr[i]]) {
			var el = f[arr[i]];
			if (el.type != "select-one" && el.length > 1) el = el[0];
			el.removeAttribute(type);
		}
	}
}
function setAttr(formName, keys, type, value) {
	var f = document.forms[formName];
	if(!f) return;
	var arr = keys.replace(/ +/g, "").split(",");
	for(var i=0; i<arr.length; i++) {
		if(f[arr[i]]) {
			var el = f[arr[i]];
			if (el.type != "select-one" && el.length > 1) el = el[0];
			el.setAttribute(type, value);
		}
	}
}

function addEvent(type, func, element) {
	type = type.replace("on", "");
	if(!element) element = window;
	if(element.addEventListener) element.addEventListener(type, func, false);
	else if(element.attachEvent) element.attachEvent("on" + type, func);
}

function deleteEvent(type, func, element) {
	type = type.replace("on", "");
	if(!element) element = window;
	if(element.removeEventListener) element.removeEventListener(type, func, false);
	else if(element.detachEvent) element.detachEvent("on" + type, func);
}

function Player(url, width, height, img, autostart) {
	if(!autostart) autostart = "true";
	var type = url.substring(url.lastIndexOf(".") + 1, url.length).toLowerCase();
	var player = "";
	switch(type) {
		case "avi" :
		case "wmv" :
		case "wma" :
			player = '<object style="filter:gray();" classid="clsid:6bf52a52-394a-11d3-b153-00c04f79faa6"'
			+ ' codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701"'
			+ ' width="' + width + '"'
			+ ' height="' + height + '">'
			+ '<param name="URL" value="' + url + '" />'
			+ '<param name="allowFullScreen" value="true">'
			+ '<param name="rate" value="1" />'
			+ '<param name="balance" value="0" />'
			+ '<param name="currentPosition" value="0" />'
			+ '<param name="defaultFrame" />'
			+ '<param name="playCount" value="1" />'
			+ '<param name="autoStart" value="' + autostart + '" />'
			+ '<param name="currentMarker" value="0" />'
			+ '<param name="invokeURLs" value="-1" />'
			+ '<param name="baseURL" />'
			+ '<param name="volume" value="50" />'
			+ '<param name="mute" value="0" />'
			+ '<param name="uiMode" value="full" />'
			+ '<param name="stretchToFit" value="0" />'
			+ '<param name="windowlessVideo" value="0" />'
			+ '<param name="enabled" value="-1" />'
			+ '<param name="enableContextMenu" value="-1" />'
			+ '<param name="fullScreen" value="0" />'
			+ '<param name="SAMIStyle" />'
			+ '<param name="SAMILang" />'
			+ '<param name="SAMIFilename" />'
			+ '<param name="captioningID" />'
			+ '<param name="enableErrorDialogs" value="true" />'
			+ '<embed src="' + url + '" type="application/x-mplayer2" allowFullScreen="true" width="' + width + '" height="' + height + '" autostart="' + autostart + '"></embed>'
			+ '</object>';
			break;
		case "mp4" :
		case "flv" :
			player = '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"'
			+ ' codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"'
			+ ' width="' + width + '"'
			+ ' height="' + height + '"'
			+ '><param name="src" value="/player/player.swf?stretching=exactit&autostart=true&file=' + url + '">'
			+ '<param name="allowFullScreen" value="true">'
			+ '<param name="stretching" value="exactit">'
			+ '<param name="width" value="' + width + '">'
			+ '<param name="height" value="' + height + '">'
			+ '<param name="autostart" value="true" />'
			+ '<param name="bgcolor" value="#ffffff" />'
			+ '<param name="wmode" value="transparent" />'
			+ '<embed type="application/x-shockwave-flash"'
			+ ' src="/player/player.swf?stretching=exactit&autostart=true&file=' + url + '"'
			+ ' bgcolor="#ffffff"'
			+ ' width="' + width + '"'
			+ ' height="' + height + '"'
			+ ' salign="TL"'
			+ ' scale="noScale"'
			+ ' allowScriptAccess="always"'
			+ ' allowFullScreen="true"'
			+ ' stretching="exactit"'
			+ ' type="application/x-shockwave-flash"'
			+ ' wmode="transparent"'
			+ ' pluginspage="http://www.macromedia.com/go/getflashplayer" />'
			+ '</embed></object>';
			break;
		defalue :
			break;
	}
	document.write(player);
}

function phoneNumber(el) {
	el.value = _phoneNumber(el.value);
}
function _phoneNumber(value) {
	value = value.replace(/[^0-9]/g, "")
	var pattern = new RegExp("^(02|[0-9]{3})([0-9]{" + (value.length <= (/^02/.test(value) ? 9 : 10) ? 3 : 4) + "})?([0-9]{4})?");
	var arr = value.replace(pattern, "$1-$2-$3").replace(/--/g, "-").split("-");
	if(arr[2]) arr[2] = arr[2].substring(0, 4);
	return arr.join("-", arr);
}
function ssNumber(el) {
	el.value = _ssNumber(el.value);
}
function _ssNumber(value) {
	value = value.replace(/[^0-9]/g, "")
	var pattern = new RegExp("^([0-9]{6})([0-9]{7})?");
	var arr = value.replace(pattern, "$1-$2").replace(/--/g, "-").split("-");
	if(arr[1]) arr[1] = arr[1].substring(0, 7);
	return arr.join("-", arr);
}
function bizNumber(el) {
	el.value = _bizNumber(el.value);
}
function _bizNumber(value) {
	value = value.replace(/[^0-9]/g, "")
	var pattern = new RegExp("^([0-9]{3})([0-9]{2})?([0-9]{5})?");
	var arr = value.replace(pattern, "$1-$2-$3").replace(/--/g, "-").split("-");
	if(arr[2]) arr[2] = arr[2].substring(0, 5);
	return arr.join("-", arr);
}

function toggleTableRow(trElement, display) {
	if(!display) display = trElement.style.display == "none" ? "block" : "none";
	if(display == "none") {
		trElement.style.display = "none";
	} else {
		try { trElement.style.display = "table-row"; }
		catch(e) { trElement.style.display = "block"; }
	}
}

function _setDate(date, ymd) {
	ymd = ymd.replace(/-/g, '');
	date.setFullYear(ymd.substring(0, 4));
	date.setMonth(ymd.substring(4, 6) * 1 - 1);
	date.setDate(ymd.substring(6, 8) * 1);
	return date;
}
function addDate(type, diff, d, format) {
	var date = _setDate(new Date(), dateFormat(d ? d : new Date()));
	type = type.toUpperCase();
	if(type == "Y") date.setFullYear(date.getFullYear() + diff);
	if(type == "M") date.setMonth(date.getMonth() + diff);
	if(type == "D") date.setDate(date.getDate() + diff);
	return format ? dateFormat(date) : date;
}
function dateFormat(date, j) {
    if(!j) j = "-";
    return date.getFullYear()
        + j + ((date.getMonth() + 1 < 10 ? "0" : "") + (date.getMonth() + 1))
        + j + ((date.getDate() < 10 ? "0" : "") + date.getDate());
}

/*
//DOMloadcomplete
var ready = (function () {
    var ready_event_fired = false;
    var ready_event_listener = function (fn) {
        var idempotent_fn = function () {
            if (ready_event_fired) { return; }
            ready_event_fired = true;
            return fn();
        }
        var do_scroll_check = function () {
            if (ready_event_fired) { return; }
            try { document.documentElement.doScroll('left'); }
            catch(e) { setTimeout(do_scroll_check, 1); return; }
            return idempotent_fn();
        }
        if (document.readyState === "complete") {
            return idempotent_fn();
        }
        if (document.addEventListener) {
            document.addEventListener("DOMContentLoaded", idempotent_fn, false);
            window.addEventListener("load", idempotent_fn, false);
        } else if (document.attachEvent) {
           // document.attachEvent("onreadystatechange", idempotent_fn);
            window.attachEvent("onload", idempotent_fn);
            var toplevel = false;
            try { toplevel = window.frameElement == null; } catch (e) {}
            if (document.documentElement.doScroll && toplevel) {
                return do_scroll_check();
            }
        }
    };
    return ready_event_listener;
})();
*/

function closeWindow() {  
	setTimeout(function() {  
		window.close();  
    });  
}  
  