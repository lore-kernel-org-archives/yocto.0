Return-Path: <ldhave@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E591AE00AFD; Wed, 18 Jun 2014 09:19:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_IMAGE_RATIO_08,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ldhave[at]gmail.com)
	* 0.0 HTML_IMAGE_RATIO_08 BODY: HTML has a low ratio of text to image
	area *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.181 listed in list.dnswl.org]
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E43DE003DA
	for <yocto@yoctoproject.org>; Wed, 18 Jun 2014 09:19:28 -0700 (PDT)
Received: by mail-wi0-f181.google.com with SMTP id n3so1450453wiv.8
	for <yocto@yoctoproject.org>; Wed, 18 Jun 2014 09:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type;
	bh=xoRB6yzQXuql51k4a0afsOGymhbYfSlxdWROsgxq6Gw=;
	b=EDingHrlH96oOheMkQtmjYmjjCJSe5qs2tQFZgiKRqbWvO/x1qphYxkc6uPaWFcdHT
	2X41NZT7a3pXT4HgDfFQ+u0NDJgzbyGWEQzeDxGJZDYFpb6hQI5mKtaNUt42gM3joXsj
	eywptZ+x5mMGJFLeaL2JT3dfa5Awie+vbKNF4k2TmZgQCIwZ3FHhKk/KJeNV1SSR1HuX
	RbR7gpbyradh+DNqwhsIp76pySQYFfgXu38O0zgjqaWSiY7h0z/a+H2OQ2S8fk3zW0ms
	4latKkRzMAbVG9R4BVv++y6AAIHm1pPaoy8SFnmrYHxijmekof9BVBOUB7X++5ik1fKy
	89UA==
X-Received: by 10.180.94.37 with SMTP id cz5mr6676294wib.19.1403108368109;
	Wed, 18 Jun 2014 09:19:28 -0700 (PDT)
Received: from [192.168.0.101] (94-224-39-41.access.telenet.be. [94.224.39.41])
	by mx.google.com with ESMTPSA id d2sm6174760eeo.12.2014.06.18.09.19.26
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 18 Jun 2014 09:19:27 -0700 (PDT)
Message-ID: <53A1BC0B.1090109@gmail.com>
Date: Wed, 18 Jun 2014 18:19:23 +0200
From: =?ISO-8859-1?Q?Laurent_d=27Hav=E9?= <ldhave@gmail.com>
User-Agent: Postbox 3.0.11 (Windows/20140602)
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <53A194E1.1080206@gmail.com>
	<3163865.caRNAjYEnc@peggleto-mobl5.ger.corp.intel.com>
	<3008226.YT4zIGGLGl@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <3008226.YT4zIGGLGl@peggleto-mobl5.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Recipe to Copy JAR files, not extract it
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 18 Jun 2014 16:19:33 -0000
X-Groupsio-MsgNum: 20227
Content-Type: multipart/alternative;
	boundary="------------040701090005010709040300"

--------------040701090005010709040300
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

Damn , i did RTFM, but that's not the version i was reading.
That'll teach me !


Thanks for quick response, really sorry , for not reading the latest 
version of the manual.


Take care
Laurent

> Paul Eggleton <mailto:paul.eggleton@linux.intel.com>
> 18 June 2014 18:09
>
> Actually, I was mistaken - it is mentioned in the reference manual:
>
> http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-SRC_URI
>
> (FWIW, I'm happy to answer questions even if they are covered by
> the manual, this is just an aside ;)
>
> Cheers,
> Paul
>
> Paul Eggleton <mailto:paul.eggleton@linux.intel.com>
> 18 June 2014 18:06
> Hi Laurent,
>
> if you add ;unpack=0 to the end of the entry for the jar file within 
> SRC_URI,
> it should prevent it from being unpacked.
>
> (I see we don't have this documented anywhere, I will add it to the
> documentation todo list.)
>
> Cheers,
> Paul
>
> Laurent d'Havé <mailto:ldhave@gmail.com>
> 18 June 2014 15:32
> Hello
> In a recipe i'm writing, i need to simply copy a .jar file.
> Since it's specified in SRC_URI , bitbake extracts it, making WORKDIR 
> a complete mess, and makes it impossible to copy the .jar file to 
> destination.
>
>
> How would i go about simply copying it ? Anyway to tell bitbake NOT to 
> extract content of it ?

--------------040701090005010709040300
Content-Type: multipart/related;
 boundary="------------000801090703030109090104"

--------------000801090703030109090104
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html><head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="Content-Type">
</head><body bgcolor="#FFFFFF" text="#000000">Damn , i did RTFM, but 
that's not the version i was reading.<br>
That'll teach me !<br>
<br>
<br>
Thanks for quick response, really sorry , for not reading the latest 
version of the manual.<br>
<br>
<br>
Take care<br>
Laurent<br>
<br>
<blockquote style="border: 0px none;" 
cite="mid:3008226.YT4zIGGLGl@peggleto-mobl5.ger.corp.intel.com" 
type="cite">
  <div style="margin:30px 25px 10px 25px;" class="__pbConvHr"><div 
style="display:table;width:100%;border-top:1px solid 
#EDEEF0;padding-top:5px"> 	<div 
style="display:table-cell;vertical-align:middle;padding-right:6px;"><img
 photoaddress="paul.eggleton@linux.intel.com" photoname="Paul Eggleton" 
src="cid:part1.05090802.01080200@gmail.com" 
name="compose-unknown-contact.jpg" height="25px" width="25px"></div>   <div
 
style="display:table-cell;white-space:nowrap;vertical-align:middle;width:100%">
   	<a moz-do-not-send="true" 
href="mailto:paul.eggleton@linux.intel.com" style="color:#737F92 
!important;padding-right:6px;font-weight:bold;text-decoration:none 
!important;">Paul Eggleton</a></div>   <div 
style="display:table-cell;white-space:nowrap;vertical-align:middle;">   
  <font color="#9FA2A5"><span style="padding-left:6px">18 June 2014 
18:09</span></font></div></div></div>
  <div style="color:#888888;margin-left:24px;margin-right:24px;" 
__pbrmquotes="true" class="__pbConvBody"><div><!----><br>Actually, I was
 mistaken - it is mentioned in the reference manual:<br><br><a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-SRC_URI">http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-SRC_URI</a><br><br>(FWIW,
 I'm happy to answer questions even if they are covered by<br>the 
manual, this is just an aside ;)<br><br>Cheers,<br>Paul<br><br></div></div>
  <div style="margin:30px 25px 10px 25px;" class="__pbConvHr"><div 
style="display:table;width:100%;border-top:1px solid 
#EDEEF0;padding-top:5px"> 	<div 
style="display:table-cell;vertical-align:middle;padding-right:6px;"><img
 photoaddress="paul.eggleton@linux.intel.com" photoname="Paul Eggleton" 
src="cid:part1.05090802.01080200@gmail.com" 
name="compose-unknown-contact.jpg" height="25px" width="25px"></div>   <div
 
style="display:table-cell;white-space:nowrap;vertical-align:middle;width:100%">
   	<a moz-do-not-send="true" 
href="mailto:paul.eggleton@linux.intel.com" style="color:#737F92 
!important;padding-right:6px;font-weight:bold;text-decoration:none 
!important;">Paul Eggleton</a></div>   <div 
style="display:table-cell;white-space:nowrap;vertical-align:middle;">   
  <font color="#9FA2A5"><span style="padding-left:6px">18 June 2014 
18:06</span></font></div></div></div>
  <div style="color:#888888;margin-left:24px;margin-right:24px;" 
__pbrmquotes="true" class="__pbConvBody"><div>Hi Laurent,<br></div><div><!----><br>if
 you add ;unpack=0 to the end of the entry for the jar file within 
SRC_URI, <br>it should prevent it from being unpacked.<br><br>(I see we 
don't have this documented anywhere, I will add it to the <br>documentation
 todo list.)<br><br>Cheers,<br>Paul<br><br></div></div>
  <div style="margin:30px 25px 10px 25px;" class="__pbConvHr"><div 
style="display:table;width:100%;border-top:1px solid 
#EDEEF0;padding-top:5px"> 	<div 
style="display:table-cell;vertical-align:middle;padding-right:6px;"><img
 photoaddress="ldhave@gmail.com" photoname="Laurent d'Hav&eacute;" 
src="cid:part3.02050307.01050402@gmail.com" name="postbox-contact.jpg" 
height="25px" width="25px"></div>   <div 
style="display:table-cell;white-space:nowrap;vertical-align:middle;width:100%">
   	<a moz-do-not-send="true" href="mailto:ldhave@gmail.com" 
style="color:#737F92 
!important;padding-right:6px;font-weight:bold;text-decoration:none 
!important;">Laurent d'Hav&eacute;</a></div>   <div 
style="display:table-cell;white-space:nowrap;vertical-align:middle;">   
  <font color="#9FA2A5"><span style="padding-left:6px">18 June 2014 
15:32</span></font></div></div></div>
  <div style="color:#888888;margin-left:24px;margin-right:24px;" 
__pbrmquotes="true" class="__pbConvBody">Hello
<br>In a recipe i'm writing, i need to simply copy a .jar file.
<br>Since it's specified in SRC_URI , bitbake extracts it, making 
WORKDIR a 
complete mess, and makes it impossible to copy the .jar file to 
destination.
<br>
<br>
<br>How would i go about simply copying it ? Anyway to tell bitbake NOT 
to 
extract content of it ?
<br></div>
</blockquote>
</body></html>

--------------000801090703030109090104
Content-Type: image/jpeg; x-apple-mail-type=stationery;
 name="compose-unknown-contact.jpg"
Content-Transfer-Encoding: base64
Content-ID: <part1.05090802.01080200@gmail.com>
Content-Disposition: inline;
 filename="compose-unknown-contact.jpg"

/9j/4AAQSkZJRgABAQEARwBHAAD/2wBDAAEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEB
AQEBAQICAQECAQEBAgICAgICAgICAQICAgICAgICAgL/2wBDAQEBAQEBAQEBAQECAQEBAgICAgIC
AgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgL/wAARCAAZABkDAREA
AhEBAxEB/8QAGAAAAwEBAAAAAAAAAAAAAAAABgcICQr/xAA0EAABAwMCAgcECwAAAAAAAAACAQME
AAUGERITIQcUIjEyQnYIFRa1FzY3UVRWkZOV0tP/xAAZAQEAAwEBAAAAAAAAAAAAAAADAAEEAgX/
xAAoEQACAQEFBwUAAAAAAAAAAAAAAQIRAxIhgbETMTJBUXGhM0JSctH/2gAMAwEAAhEDEQA/AO4T
H8fx64Y9j1wuGPY/cbhcMfsc+fPuNitU+dOmzbVDlS5UuZMim4+8chxwlUiXxcuWiU6ilgjOAMvK
cHj3N+O30eYzJt8d8mDnt2PHkfc4Rq286xC906ON9kturwqaeUdaRWNd+LzZxtX8V4/BqQcawyYk
N9nFsUONL6u60+zjdmZImH9pg6063BE2yVstUIVQk7+S6Uco0vZ9RE68vBEv0g5x+a79/JSf9Kso
tfEF1xHEvS2OJ+llhJVLdm9SE0zoUiDPm25QJ2VHnPxBFsVUpDvHIGOGPm4m9tR+/iJWkzlVWKIV
tt9mgOEJnAh2+IZjyAiissskQa+XQazz92ZogqXUZyVCFVfH0yDYMfs1lbabeg45j8eZPeFJJBJS
zQTdjRmPCJBu2mrmuh7g4aKO6u4w64IOUnVpAC8b8p5+TIM3ZEl433XlRBM3nS3E52BRBXd3aIiJ
ryREpQxn430jXJqZGiX5WpcWRJYYS47Woj8MnnBaByRs2tOR0LbuVEbIUIi1PTbRygqMRTfPEk3q
Uz8JJ/Yd/pRiCO9oD7aekf1Any2BS2fpw7PVhWnHLuJ+uzgIMS+tuJ+qMd+cwqqXDP6y0ZDeCsB6
B//Z

--------------000801090703030109090104
Content-Type: image/jpeg; x-apple-mail-type=stationery;
 name="postbox-contact.jpg"
Content-Transfer-Encoding: base64
Content-ID: <part3.02050307.01050402@gmail.com>
Content-Disposition: inline;
 filename="postbox-contact.jpg"

/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAMCAgICAgMCAgIDAwMDBAYEBAQEBAgGBgUGCQgKCgkI
CQkKDA8MCgsOCwkJDRENDg8QEBEQCgwSExIQEw8QEBD/2wBDAQMDAwQDBAgEBAgQCwkLEBAQEBAQ
EBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBD/wAARCAAZABkDAREA
AhEBAxEB/8QAGQAAAgMBAAAAAAAAAAAAAAAABQYEBwgJ/8QAOBAAAgIBAwICAw0JAAAAAAAAAQID
BAUGERIABxMhFSIxCAkXGCQyNjc4VVeU03F0doOVsrO04//EABkBAAMBAQEAAAAAAAAAAAAAAAME
BQECBv/EACsRAAEDAgMGBgMAAAAAAAAAAAEAAgMEEhETMQUhIjJRgRVCU3HR8EFhof/aAAwDAQAC
EQMRAD8ABdxte27OpdM4qzLNJdzz1rWRuLVge0ySw7NKZHRiE8RlGxBHrALsEAMypnkz7fKBj3VO
kgjfEHEbyf4mrTk1afGWLUdWG61MuJI7GLpyXSwUuEKQRheW2xVRuzAqNuRALkU4yrnJWopXNmy2
DVQafcfE4zUOTo5/TyY6PC5OKq9+CijRTIXUJPHIsSsiFnjAcEBWmhHIs6jppgzG3NKUe10LrXpf
+O3q38SM1+X/AOfXWUeoWYrO3fjM5zUmtNPW4KZSsMXRp0AsjvMeMabygIV5Fndtk25gAbqCDuPI
Y8XkLoTPbwgoxpnvPe9zxl7gjymQzWadbCPWmn+TVLD7Dlv67O23kSGHnvszfO6BUwMdFlDdiUeC
Z4kzTvIUztZrHTfdjXdbGatwtqXO6ktj0nHCESCWKvEJUblt4ijxK8Y4IylmVOTMBx6DTsdE+wnh
RamVkzL8OJD/AILO2H3Iv5qf9TpxKXFAu4ep9Z6ekyGn7nKpJXm2ghn85IFmiRptj7U5NCN18tip
DAnkT1eRjguLQdVVsWHuWb1Oosizz3ZI/BZivEyOePFvb5cvbv8As6CQXFMDhWpuwPajjrS1mNIY
qDKZbGPdqeFbupXCqksEausrFE5ET+fLyI2KlSCHr0FFDVsdJNJYG4eW7UOPUdF57bG1ZtnPjjhi
zHPx3XW6Fo/IOPN+ktejNe/hPqb+nz/p9b4aPUH3us8XPpH72Qr3wL7R+r/34/68XUoK6VniX6Q1
/wCR/YnWHUIjuVXl23+tHFfxlD/lh6qbP0f7fKhbW5ovf4XabpJPL//Z

--------------000801090703030109090104--

--------------040701090005010709040300--
