Return-Path: <Liviu.Gheorghisan@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAB7DE008A7; Wed, 17 Dec 2014 01:46:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 15530E003AB
	for <yocto@yoctoproject.org>; Wed, 17 Dec 2014 01:46:37 -0800 (PST)
Received: from [192.168.14.95] (192.168.14.95) by smtp.enea.com (172.21.1.208)
	with Microsoft SMTP Server id 14.3.158.1;
	Wed, 17 Dec 2014 10:46:31 +0100
Message-ID: <549150F7.5070409@enea.com>
Date: Wed, 17 Dec 2014 11:46:31 +0200
From: Liviu Gheorghisan <liviu.gheorghisan@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: <Neil.Wu@Emerson.com>, <yocto@yoctoproject.org>
References: <20141211004713.GC4102@mentor.com>	<1077253035.5058800.1418282511482.JavaMail.yahoo@jws10079.mail.ne1.yahoo.com>
	<3204FE6663E1F14CAF4CA6928E60C8521E220F69@USSTLZ-PMSG012.emrsn.org>
In-Reply-To: <3204FE6663E1F14CAF4CA6928E60C8521E220F69@USSTLZ-PMSG012.emrsn.org>
X-Originating-IP: [192.168.14.95]
Subject: Re: problem of toolchain install directrory
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
X-List-Received-Date: Wed, 17 Dec 2014 09:46:41 -0000
Content-Type: multipart/alternative;
	boundary="------------050303060403060002030903"

--------------050303060403060002030903
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

Hello Neil,

Your problem is that the toolchain is installed with the location of the 
sysroot hardcoded as the default installation path for the tool-chain.
You can see this location with:
$ arm-poky-linux-gnueabi-gcc --print-sysroot // or whatever 
cross-compiler you built

However, after you source the environment script for the toolchain:

$ source environment-setup-armv7a-vfp-neon-poky-linux-gnueabi

the environment variables related to the toolchain will be updated 
accordingly, taking care of this problem.

So, use $CC instead of directly calling the gcc cross compiler 
arm-poky-linux-gnueabi-gcc (or whatever the platform you're building for).

Check the difference with this:
$ echo $CC
arm-poky-linux-gnueabi-gcc -march=armv7-a -mthumb-interwork 
-mfloat-abi=softfp -mfpu=neon 
--sysroot=/home/livghe/work/ab/sdk/sysroots/armv7a-vfp-neon-poky-linux-gnueabi

$ $CC --print-sysroot // uses the correct sysroot
/home/livghe/work/ab/sdk/sysroots/armv7a-vfp-neon-poky-linux-gnueabi

$ $ arm-poky-linux-gnueabi-gcc --print-sysroot // uses the sysroot from 
the default instalation path, where it's not present.
/opt/poky/4.0/sysroots/armv7a-vfp-neon-poky-linux-gnueabi

So, you should always use the env variables ($CC, $AR, $LDFLAGS, etc) 
after sourcing the environment script from the toolchain instalation 
path, and not the toolchain executables directly, because the 
environment variables add some useful flags, not only related to the 
sysroot, but also to the type of CPU, etc.

- Liviu


On 12/17/2014 11:30 AM, Neil.Wu@Emerson.com wrote:
>
> *Hello ,all*
>
> I build the toolchain via  bitbake core-image-minimal –c populate_sdk. 
> Then I install the toolchain.
>
> If I install the toolchain in default directory(/default: 
> /opt/poky/1.7.1/), everything is ok.
>
> But,   if I not install in the default directory, it will appears the 
> problem that can’t find the system header files.
>
> Example: stdio.h
>
> Why is this ? Whether I need to do some other operation.  If you know 
> please help me ! Thank you very much.
>
> Best wishes
>
> Neil
>
>
>

-- 
Liviu Gheorghisan
Software Engineer

http://www.enea.com


--------------050303060403060002030903
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hello Neil,<br>
    <br>
    Your problem is that the toolchain is installed with the location of
    the sysroot hardcoded as the default installation path for the
    tool-chain.<br>
    You can see this location with:<br>
    $ arm-poky-linux-gnueabi-gcc --print-sysroot // or whatever
    cross-compiler you built<br>
    <br>
    However, after you source the environment script for the toolchain:<br>
    <br>
    $ source environment-setup-armv7a-vfp-neon-poky-linux-gnueabi<br>
    <br>
    the environment variables related to the toolchain will be updated
    accordingly, taking care of this problem.<br>
    <br>
    So, use $CC instead of directly calling the gcc cross compiler
    arm-poky-linux-gnueabi-gcc (or whatever the platform you're building
    for).<br>
    <br>
    Check the difference with this:<br>
    $ echo $CC<br>
    arm-poky-linux-gnueabi-gcc -march=armv7-a -mthumb-interwork
    -mfloat-abi=softfp -mfpu=neon
--sysroot=/home/livghe/work/ab/sdk/sysroots/armv7a-vfp-neon-poky-linux-gnueabi<br>
    <br>
    $ $CC --print-sysroot // uses the correct sysroot<br>
    /home/livghe/work/ab/sdk/sysroots/armv7a-vfp-neon-poky-linux-gnueabi<br>
    <br>
    $ $ arm-poky-linux-gnueabi-gcc --print-sysroot // uses the sysroot
    from the default instalation path, where it's not present.<br>
    /opt/poky/4.0/sysroots/armv7a-vfp-neon-poky-linux-gnueabi<br>
    <br>
    So, you should always use the env variables ($CC, $AR, $LDFLAGS,
    etc) after sourcing the environment script from the toolchain
    instalation path, and not the toolchain executables directly,
    because the environment variables add some useful flags, not only
    related to the sysroot, but also to the type of CPU, etc.<br>
    <br>
    - Liviu<br>
    <br>
    <br>
    <div class="moz-cite-prefix">On 12/17/2014 11:30 AM,
      <a class="moz-txt-link-abbreviated" href="mailto:Neil.Wu@Emerson.com">Neil.Wu@Emerson.com</a> wrote:<br>
    </div>
    <blockquote
cite="mid:3204FE6663E1F14CAF4CA6928E60C8521E220F69@USSTLZ-PMSG012.emrsn.org"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 12 (filtered
        medium)">
      <style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
-->
</style><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext="edit">
  <o:idmap v:ext="edit" data="1" />
 </o:shapelayout></xml><![endif]-->
      <div class="Section1">
        <div>
          <div>
            <div>
              <div>
                <div>
                  <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:#1F497D">Hello
                        ,all<o:p></o:p></span></b></p>
                  <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">I
                      build the toolchain via  bitbake
                      core-image-minimal –c populate_sdk. Then I install
                      the toolchain.<o:p></o:p></span></p>
                  <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p> </o:p></span></p>
                  <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">If
                      I install the toolchain in default directory(</span><i><span
                        style="font-size:9.0pt;font-family:&quot;Courier
                        New&quot;">default: /opt/poky/1.7.1</span></i><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">),

                      everything is ok. <o:p></o:p></span></p>
                  <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p> </o:p></span></p>
                  <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">But,
                        if I not install in the default directory, it
                      will appears the problem that can’t find the
                      system header files.
                      <o:p></o:p></span></p>
                  <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Example:
                      stdio.h
                      <o:p></o:p></span></p>
                  <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p> </o:p></span></p>
                  <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Why
                      is this ? Whether I need to do some other
                      operation.  If you know please help me ! Thank you
                      very much.<o:p></o:p></span></p>
                  <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p> </o:p></span></p>
                  <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Best
                      wishes<o:p></o:p></span></p>
                  <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Neil<o:p></o:p></span></p>
                  <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p> </o:p></span></p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Liviu Gheorghisan
Software Engineer

<a class="moz-txt-link-freetext" href="http://www.enea.com">http://www.enea.com</a></pre>
  </body>
</html>

--------------050303060403060002030903--
