Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02675E009E7; Thu, 12 Jun 2014 02:18:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEB4DE0070F
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 02:18:03 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id AC6EB27E02B;
	Thu, 12 Jun 2014 09:18:01 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id fB00edN23tx4; Thu, 12 Jun 2014 09:18:00 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 9DEB927E02A;
	Thu, 12 Jun 2014 09:18:00 +0000 (UTC)
Message-ID: <53997044.70403@dynamicdevices.co.uk>
Date: Thu, 12 Jun 2014 10:17:56 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Ruud den Bekker <ruud.den.bekker@cordis.nl>
References: <21598C768CAB7B46B75C18783A59ACEE271CF5@cordissvr01.Cordis.local>
In-Reply-To: <21598C768CAB7B46B75C18783A59ACEE271CF5@cordissvr01.Cordis.local>
X-Enigmail-Version: 1.6
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: dynamic library problem
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
X-List-Received-Date: Thu, 12 Jun 2014 09:18:18 -0000
Content-Type: multipart/alternative;
	boundary="------------000503030306010408000704"

--------------000503030306010408000704
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 12/06/2014 10:07, Ruud den Bekker wrote:
>
> Hi Alex,
>
>  
>
> Recently you posted a fix for a dynamic library loading problem
>
> for the RaspberryPi and a graphic library.
>
>  
>
> I'm now facing a dynamic library not found problem when using
>
> the BeagleBone board RFS in yocto. However, when I use the qemuarm
>
> RFS, everything is running fine.
>
>  
>
> How can I determine the LDFLAGS that are being used for both builds?
>
>  
>
>  
>

Hi Ruud,

(Possibly helpful to others so cc:'d to the list)

If you're referring to the gstreamer1.0-omx work then yes, that was a
little tricky to track down.

It wasn't a "usual" library loading problem though as it was related to
some strange things that the library authors were doing to implement the
equivalent of a static constructor when the library was loaded. There
wasn't an explicit dependency on the library as the raspivid executable
didn't use any exported functions from that library, and bitbake was
passing an option that meant "unneeded" library dependencies were
stripped out. Thus the library wasn't loaded and didn't do the things it
needed to do.

Getting back to the point, it depends on the problem you are seeing, but
assuming that you are getting an error because of a missing library I
guess the first thing to do (which perhaps you already did?) is to look
for the missing library and do,

cd /
find -name libfoo.so

To see if it is actually in the board image.

If it is there then the next step is either to make sure it is being
picked up with something like

export LD_LIBRARY_PATH=/path/to/libfoo
./run_my_exe

It is also useful to install strace for this type of problem and look at
what libraries are being found and loaded

strace run_my_exe

To actually see what bitbake is doing on the server-side I would do
something like

bitbake -f -c devshell my_recipe

cd ../temp
nano log.do_configure

or

cd ../temp
grep LD_FLAGS

I've also found it to be useful to look at the config.log in ${S}

Hope this helps,

Alex
 

--------------000503030306010408000704
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <div class="moz-cite-prefix">On 12/06/2014 10:07, Ruud den Bekker
      wrote:<br>
    </div>
    <blockquote
cite="mid:21598C768CAB7B46B75C18783A59ACEE271CF5@cordissvr01.Cordis.local"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      <meta name="Generator" content="Microsoft Word 12 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Hi Alex,<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal"><span lang="EN-US">Recently you posted a
            fix for a dynamic library loading problem<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">for the RaspberryPi and
            a graphic library.<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">I&#8217;m now facing a dynamic
            library not found problem when using<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">the BeagleBone board RFS
            in yocto. However, when I use the qemuarm<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">RFS, everything is
            running fine.<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">How can I determine the
            LDFLAGS that are being used for both builds?<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
      </div>
    </blockquote>
    <br>
    Hi Ruud,<br>
    <br>
    (Possibly helpful to others so cc:'d to the list)<br>
    <br>
    If you're referring to the gstreamer1.0-omx work then yes, that was
    a little tricky to track down.<br>
    <br>
    It wasn't a "usual" library loading problem though as it was related
    to some strange things that the library authors were doing to
    implement the equivalent of a static constructor when the library
    was loaded. There wasn't an explicit dependency on the library as
    the raspivid executable didn't use any exported functions from that
    library, and bitbake was passing an option that meant "unneeded"
    library dependencies were stripped out. Thus the library wasn't
    loaded and didn't do the things it needed to do.<br>
    <br>
    Getting back to the point, it depends on the problem you are seeing,
    but assuming that you are getting an error because of a missing
    library I guess the first thing to do (which perhaps you already
    did?) is to look for the missing library and do,<br>
    <br>
    cd /<br>
    find -name libfoo.so<br>
    <br>
    To see if it is actually in the board image.<br>
    <br>
    If it is there then the next step is either to make sure it is being
    picked up with something like<br>
    <br>
    export LD_LIBRARY_PATH=/path/to/libfoo<br>
    ./run_my_exe<br>
    <br>
    It is also useful to install strace for this type of problem and
    look at what libraries are being found and loaded<br>
    <br>
    strace run_my_exe<br>
    <br>
    To actually see what bitbake is doing on the server-side I would do
    something like<br>
    <br>
    bitbake -f -c devshell my_recipe<br>
    <br>
    cd ../temp<br>
    nano log.do_configure<br>
    <br>
    or <br>
    <br>
    cd ../temp<br>
    grep LD_FLAGS<br>
    <br>
    I've also found it to be useful to look at the config.log in ${S} <br>
    <br>
    Hope this helps,<br>
    <br>
    Alex<br>
    &nbsp;<br>
    <div class="moz-signature">
      <div class="preview"> </div>
    </div>
  </body>
</html>

--------------000503030306010408000704--
