Return-Path: <ldhave@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46798E00C14; Thu, 19 Jun 2014 06:41:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ldhave[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f46.google.com (mail-wg0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAF91E00BE9
	for <yocto@yoctoproject.org>; Thu, 19 Jun 2014 06:41:08 -0700 (PDT)
Received: by mail-wg0-f46.google.com with SMTP id y10so2327677wgg.29
	for <yocto@yoctoproject.org>; Thu, 19 Jun 2014 06:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type;
	bh=vE95dNFkB46Bd/MmylJJHXDitdX+Ca0TdajNZwX8Gqs=;
	b=Ats+KkOVBlTth/LRuho0z1IzVzLaMYPgt/FjuSArCcy9ZYbTpPBg/6j1dnDbB3a2oS
	2dqp9c0PeRkaV0OEcBpyc6+w+7XMVeF7SmZ8mre8RiRZ1mHlXxpU6gFVF+1OIUI7OYPS
	EtEoCBa+Mu8gwVogImQyZbC7vohAkIZDH//P2Z9JfjkcymiQeIF74SXm2sLwDLKHcOpF
	o42JCTO8+q1sbr5XBP51vIL/sinY4LlBhWnwnpt8CXheVYo+cJ1O8z+RBefW2cRoaXwU
	x1kG9vbZWq3EBWpRWMNj6uX4j8dL+v1y0r1J7m23s7xHOva1cfytZnakqI2Gvg8Gb3P2
	Q7QQ==
X-Received: by 10.194.123.105 with SMTP id lz9mr4833992wjb.122.1403185267557; 
	Thu, 19 Jun 2014 06:41:07 -0700 (PDT)
Received: from [192.168.0.101] (ip-83-134-141-19.dsl.scarlet.be.
	[83.134.141.19]) by mx.google.com with ESMTPSA id
	ds9sm33483207wib.20.2014.06.19.06.41.05 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 19 Jun 2014 06:41:06 -0700 (PDT)
Message-ID: <53A2E86B.6090301@gmail.com>
Date: Thu, 19 Jun 2014 15:40:59 +0200
From: =?ISO-8859-1?Q?Laurent_d=27Hav=E9?= <ldhave@gmail.com>
User-Agent: Postbox 3.0.11 (Windows/20140602)
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <53A194E1.1080206@gmail.com>
	<3008226.YT4zIGGLGl@peggleto-mobl5.ger.corp.intel.com>
	<53A1BC0B.1090109@gmail.com>
	<1499564.DQG69I1imK@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1499564.DQG69I1imK@peggleto-mobl5.ger.corp.intel.com>
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
X-List-Received-Date: Thu, 19 Jun 2014 13:41:21 -0000
X-Groupsio-MsgNum: 20235
Content-Type: multipart/alternative;
	boundary="------------060701030305000600070506"

--------------060701030305000600070506
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

That worked great.

Except i'm now having a strange issue, been pulling hair's out for a 
couple of hours ...

WARNING: QA Issue: taxi: Files/directories were installed but not shipped
   /usr/share
   /usr/share/java
   /usr/share/java/headless.jar


And indeed, my jar file will not be bundled in the rootfs !!

Some copy-paste from my recipe :

SRC_URI = " \
file://headless .jar;unpack=0 \
"
do_install() {
install -m 0755 -d ${D}/usr/share/java
  install -m 0755 ${WORKDIR}/headless .jar ${D}/usr/share/java
  }


Any clues ? If i change the path  /usr/bin  it works.
Is it because i'm putting it in /usr/share/java ?
But that's where all the other JAR's go ...


h e l p
> Paul Eggleton <mailto:paul.eggleton@linux.intel.com>
> 18 June 2014 18:31
>
> No problem; please feel free to ask any questions you have. I never tell
> people to RTFM, although I may point to sections of the manual if they 
> exist
> to save me some typing :)
>
> Cheers,
> Paul
>
> Laurent d'Havé <mailto:ldhave@gmail.com>
> 18 June 2014 18:19
> Damn , i did RTFM, but that's not the version i was reading.
> That'll teach me !
>
>
> Thanks for quick response, really sorry , for not reading the latest 
> version of the manual.
>
>
> Take care
> Laurent
>
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

--------------060701030305000600070506
Content-Type: multipart/related;
 boundary="------------080400000503030706030104"

--------------080400000503030706030104
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html><head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="Content-Type">
</head><body text="#000000" bgcolor="#FFFFFF">That worked great.<br>
<br>
Except i'm now having a strange issue, been pulling hair's out for a 
couple of hours ...<br>
<br>
WARNING: QA Issue: taxi: Files/directories were installed but not 
shipped<br>
&nbsp; /usr/share<br>
&nbsp; /usr/share/java<br>
&nbsp; /usr/share/java/headless.jar<br>
<br>
<br>
And indeed, my jar file will not be bundled in the rootfs !!<br>
<br>
Some copy-paste from my recipe :<br>
<br>
SRC_URI = " \<br>
<a class="moz-txt-link-freetext" href="file://">file://</a><span>headless </span>.jar;unpack=0 \<br>
"&nbsp;&nbsp;&nbsp; <br>
do_install() {<br>
install -m 0755 -d ${D}/usr/share/java<br>
&nbsp;install -m 0755 ${WORKDIR}/<span>headless </span>.jar 
${D}/usr/share/java<br>
&nbsp;}<br>
<br>
<br>
Any clues ? If i change the path&nbsp; /usr/bin&nbsp; it works.<br>
Is it because i'm putting it in /usr/share/java ?<br>
But that's where all the other JAR's go ... <br>
<br>
<br>
h e l p<br>
<blockquote style="border: 0px none;" 
cite="mid:1499564.DQG69I1imK@peggleto-mobl5.ger.corp.intel.com" 
type="cite">
  <div style="margin:30px 25px 10px 25px;" class="__pbConvHr"><div 
style="display:table;width:100%;border-top:1px solid 
#EDEEF0;padding-top:5px"> 	<div 
style="display:table-cell;vertical-align:middle;padding-right:6px;"><img
 photoaddress="paul.eggleton@linux.intel.com" photoname="Paul Eggleton" 
src="cid:part1.05070407.05050401@gmail.com" 
name="compose-unknown-contact.jpg" width="25px" height="25px"></div>   <div
 
style="display:table-cell;white-space:nowrap;vertical-align:middle;width:100%">
   	<a moz-do-not-send="true" 
href="mailto:paul.eggleton@linux.intel.com" style="color:#737F92 
!important;padding-right:6px;font-weight:bold;text-decoration:none 
!important;">Paul Eggleton</a></div>   <div 
style="display:table-cell;white-space:nowrap;vertical-align:middle;">   
  <font color="#9FA2A5"><span style="padding-left:6px">18 June 2014 
18:31</span></font></div></div></div>
  <div style="color:#888888;margin-left:24px;margin-right:24px;" 
__pbrmquotes="true" class="__pbConvBody"><div><!----><br>No problem; 
please feel free to ask any questions you have. I never tell <br>people 
to RTFM, although I may point to sections of the manual if they exist <br>to
 save me some typing :)<br><br>Cheers,<br>Paul<br><br></div></div>
  <div style="margin:30px 25px 10px 25px;" class="__pbConvHr"><div 
style="display:table;width:100%;border-top:1px solid 
#EDEEF0;padding-top:5px"> 	<div 
style="display:table-cell;vertical-align:middle;padding-right:6px;"><img
 photoaddress="ldhave@gmail.com" photoname="Laurent d'Hav&eacute;" 
src="cid:part2.01040209.00010102@gmail.com" name="postbox-contact.jpg" 
width="25px" height="25px"></div>   <div 
style="display:table-cell;white-space:nowrap;vertical-align:middle;width:100%">
   	<a moz-do-not-send="true" href="mailto:ldhave@gmail.com" 
style="color:#737F92 
!important;padding-right:6px;font-weight:bold;text-decoration:none 
!important;">Laurent d'Hav&eacute;</a></div>   <div 
style="display:table-cell;white-space:nowrap;vertical-align:middle;">   
  <font color="#9FA2A5"><span style="padding-left:6px">18 June 2014 
18:19</span></font></div></div></div>
  <div style="color:#888888;margin-left:24px;margin-right:24px;" 
__pbrmquotes="true" class="__pbConvBody">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
Damn , i did RTFM, but 
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

  </div>
  <div style="margin:30px 25px 10px 25px;" class="__pbConvHr"><div 
style="display:table;width:100%;border-top:1px solid 
#EDEEF0;padding-top:5px"> 	<div 
style="display:table-cell;vertical-align:middle;padding-right:6px;"><img
 photoaddress="paul.eggleton@linux.intel.com" photoname="Paul Eggleton" 
src="cid:part1.05070407.05050401@gmail.com" 
name="compose-unknown-contact.jpg" width="25px" height="25px"></div>   <div
 
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
 photoaddress="ldhave@gmail.com" photoname="Laurent d'Hav&eacute;" 
src="cid:part2.01040209.00010102@gmail.com" name="postbox-contact.jpg" 
width="25px" height="25px"></div>   <div 
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

--------------080400000503030706030104
Content-Type: image/jpeg; x-apple-mail-type=stationery;
 name="compose-unknown-contact.jpg"
Content-Transfer-Encoding: base64
Content-ID: <part1.05070407.05050401@gmail.com>
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

--------------080400000503030706030104
Content-Type: image/jpeg; x-apple-mail-type=stationery;
 name="postbox-contact.jpg"
Content-Transfer-Encoding: base64
Content-ID: <part2.01040209.00010102@gmail.com>
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

--------------080400000503030706030104--

--------------060701030305000600070506--
