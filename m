Return-Path: <ashie@clear-code.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6061CE009D4; Mon, 20 Aug 2018 17:33:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 587 seconds by postgrey-1.32 at yocto-www;
	Mon, 20 Aug 2018 17:33:03 PDT
Received: from mail.clear-code.com (mail.clear-code.com [153.126.206.245])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60732E006AF
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 17:33:03 -0700 (PDT)
Received: from [192.168.10.7] (212.42.138.58.dy.bbexcite.jp [58.138.42.212])
	by mail.clear-code.com (Postfix) with ESMTPSA id 0F6BBD5190;
	Tue, 21 Aug 2018 09:23:11 +0900 (JST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.clear-code.com 0F6BBD5190
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=clear-code.com;
	s=default; t=1534810992;
	bh=p06Hqjep0mBvmG+mRv5/d+2Rx6qyOZB0Oh2s+FcIehY=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=b8V7hI1YUirtBmjFlOlr0qKZ6XfvFy5hDKWOWdlCI9C6GiCxh8XYNidafhCdR988Q
	u3LmPXCAp1TpujBAlfbgLgpGdSGaGtWvxVswubwpYtF2g+JOeVcQn08Cx5/inROOFd
	7DObs/x+KH6ZGEJqcGKqKkr7qunpiyAyAUm2mwv0=
To: "Pandey, Kamal" <Kamal.Pandey@ifm.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <0e7ab86ac1dc4ef2a81f178ff2f54d92@ifm.com>
From: Takuro Ashie <ashie@clear-code.com>
Message-ID: <8edb4d31-37b9-c8a0-40a1-2eb27f1b629f@clear-code.com>
Date: Tue, 21 Aug 2018 09:23:11 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <0e7ab86ac1dc4ef2a81f178ff2f54d92@ifm.com>
Subject: Re: bitbake firefox using meta-browser layer
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
X-List-Received-Date: Tue, 21 Aug 2018 00:33:05 -0000
X-Groupsio-MsgNum: 42206
Content-Type: multipart/alternative;
	boundary="------------C6E3C746D92F0EE337E5263F"
Content-Language: en-US

--------------C6E3C746D92F0EE337E5263F
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi.

| mozbuild.configure.options.InvalidOptionError: Unknown option: --build |

Please try removing "--build=${BUILD_SYS}" from EXTRA_OECONF in 
meta-browser/classes/mozilla.bbclass.
This option is removed in recent firefox.

# But it's a bit weird, I don't met this error on firefox 52.9.0, it's 
reproduced on firefox 60 though.
# 
https://github.com/OSSystems/meta-browser/pull/160/files#diff-3d50dfec940b3c4b146aae90e6224125R11

On 2018年08月20日 22:56, Pandey, Kamal wrote:
>
> I was trying to compile the Firefox browser for a custom embedded 
> device. But it is falling giving the following error:
>
> cd 
> /home/iepl/work/yocto_build/poky/build/tmp/work/aarch64-pdm3-linux/firefox/52.9.0esr-r0/firefox-52.9.0esr/firefox-build-dir
>
> | 
> /home/iepl/work/yocto_build/poky/build/tmp/work/aarch64-pdm3-linux/firefox/52.9.0esr-r0/firefox-52.9.0esr/configure 
> --target=aarch64-pdm3-linux --host=x86_64-linux 
> --with-toolchain-prefix=aarch64-pdm3-linux- --build=x86_64-linux 
> --prefix=/usr
>
> | Reexecuting in the virtualenv
>
> | Adding configure options from 
> /home/iepl/work/yocto_build/poky/build/tmp/work/aarch64-pdm3-linux/firefox/52.9.0esr-r0/mozconfig
>
> |   --enable-application=browser
>
> |   --target=aarch64-pdm3-linux
>
> |   --prefix=/usr
>
> |   --enable-application=browser
>
> |   --enable-official-branding
>
> |   --disable-elf-hack
>
> |   --disable-gold
>
> |   --disable-strip
>
> |   --disable-install-strip
>
> |   --with-system-nss
>
> |   --with-system-nspr
>
> |   --with-system-zlib
>
> |   --with-system-bz2
>
> |   --with-system-libevent
>
> |   --with-system-libvpx
>
> |   --with-system-icu
>
> |   --enable-system-ffi
>
> |   --enable-system-pixman
>
> |   --enable-startup-notification
>
> |   --enable-pulseaudio
>
> |   --disable-tests
>
> |   --disable-necko-wifi
>
> |   --disable-gconf
>
> |   --disable-crashreporter
>
> |   --disable-updater
>
> |   --disable-debug-symbols
>
> | checking for a shell... 
> /home/iepl/work/yocto_build/poky/build/tmp/hosttools/sh
>
> | checking for host system type... x86_64-pc-linux-gnu
>
> | checking for target system type... aarch64-pdm3-linux-gnu
>
> | Traceback (most recent call last):
>
> |   File 
> "/home/iepl/work/yocto_build/poky/build/tmp/work/aarch64-pdm3-linux/firefox/52.9.0esr-r0/firefox-52.9.0esr/configure.py", 
> line 107, in <module>
>
> |     sys.exit(main(sys.argv))
>
> |   File 
> "/home/iepl/work/yocto_build/poky/build/tmp/work/aarch64-pdm3-linux/firefox/52.9.0esr-r0/firefox-52.9.0esr/configure.py", 
> line 26, in main
>
> | sandbox.run(os.path.join(os.path.dirname(__file__), 'moz.configure'))
>
> |   File 
> "/home/iepl/work/yocto_build/poky/build/tmp/work/aarch64-pdm3-linux/firefox/52.9.0esr-r0/firefox-52.9.0esr/python/mozbuild/mozbuild/configure/__init__.py", 
> line 359, in run
>
> |     raise InvalidOptionError('Unknown option: %s' % without_value)
>
> | mozbuild.configure.options.InvalidOptionError: Unknown option: --build
>
> | *** Fix above errors and then restart with\
>
> |                "make -f client.mk build"
>
> | client.mk:375: recipe for target 'configure' failed
>
> | make: *** [configure] Error 1
>
> | ERROR: oe_runmake failed
>
> | WARNING: exit code 1 from a shell command.
>
> | ERROR: Function failed: do_configure (log file is located at 
> /home/iepl/work/yocto_build/poky/build/tmp/work/aarch64-pdm3-linux/firefox/52.9.0esr-r0/temp/log.do_configure.5847)
>
> ERROR: Task 
> (/home/iepl/work/yocto_build/meta-browser/recipes-browser/firefox/firefox_52.9.0esr.bb:do_configure) 
> failed with exit code '1'
>
> Can anybody provide me a solution or at least a  hint, so that I can 
> move forward.
>
> Best Regards
>
> Kamal Pandey
>
> Junior Software Engineer
>
> ifm_logo_sqrsifm engineering pvt. ltd.
>
> Survey No. 1/10/16, 3rd floor, Above SBI, Bavdhan Branch, N.D.A. Road, 
> Bavdhan, Pune, India - 411021 | Web: www.ifm.com 
> <http://www.ifm.com/>| Phone: +91-20-22951910 Extn:215 | CIN: 
> U29213PN2010FTC13676
>
>
>


--------------C6E3C746D92F0EE337E5263F
Content-Type: multipart/related;
 boundary="------------516C6477A5E6174F8AB2F5F3"

--------------516C6477A5E6174F8AB2F5F3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi.<br>
    <br>
    | mozbuild.configure.options.InvalidOptionError: Unknown option:
    --build
    |<br>
    <br>
    Please try removing "--build=${BUILD_SYS}" from EXTRA_OECONF in
    meta-browser/classes/mozilla.bbclass.<br>
    This option is removed in recent firefox.<br>
    <br>
    # But it's a bit weird, I don't met this error on firefox 52.9.0,
    it's reproduced on firefox 60 though.<br>
    #
<a class="moz-txt-link-freetext" href="https://github.com/OSSystems/meta-browser/pull/160/files#diff-3d50dfec940b3c4b146aae90e6224125R11">https://github.com/OSSystems/meta-browser/pull/160/files#diff-3d50dfec940b3c4b146aae90e6224125R11</a><br>
    <br>
    <div class="moz-cite-prefix">On 2018年08月20日 22:56, Pandey, Kamal
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:0e7ab86ac1dc4ef2a81f178ff2f54d92@ifm.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Trebuchet MS";
	panose-1:2 11 6 3 2 2 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">I was trying to compile the Firefox browser
          for a custom embedded device. But it is falling giving the
          following error:<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">cd
/home/iepl/work/yocto_build/poky/build/tmp/work/aarch64-pdm3-linux/firefox/52.9.0esr-r0/firefox-52.9.0esr/firefox-build-dir<o:p></o:p></p>
        <p class="MsoNormal">|
/home/iepl/work/yocto_build/poky/build/tmp/work/aarch64-pdm3-linux/firefox/52.9.0esr-r0/firefox-52.9.0esr/configure
          --target=aarch64-pdm3-linux --host=x86_64-linux
          --with-toolchain-prefix=aarch64-pdm3-linux-
          --build=x86_64-linux --prefix=/usr<o:p></o:p></p>
        <p class="MsoNormal">| Reexecuting in the virtualenv<o:p></o:p></p>
        <p class="MsoNormal">| Adding configure options from
/home/iepl/work/yocto_build/poky/build/tmp/work/aarch64-pdm3-linux/firefox/52.9.0esr-r0/mozconfig<o:p></o:p></p>
        <p class="MsoNormal">|   --enable-application=browser<o:p></o:p></p>
        <p class="MsoNormal">|   --target=aarch64-pdm3-linux<o:p></o:p></p>
        <p class="MsoNormal">|   --prefix=/usr<o:p></o:p></p>
        <p class="MsoNormal">|   --enable-application=browser<o:p></o:p></p>
        <p class="MsoNormal">|   --enable-official-branding<o:p></o:p></p>
        <p class="MsoNormal">|   --disable-elf-hack<o:p></o:p></p>
        <p class="MsoNormal">|   --disable-gold<o:p></o:p></p>
        <p class="MsoNormal">|   --disable-strip<o:p></o:p></p>
        <p class="MsoNormal">|   --disable-install-strip<o:p></o:p></p>
        <p class="MsoNormal">|   --with-system-nss<o:p></o:p></p>
        <p class="MsoNormal">|   --with-system-nspr<o:p></o:p></p>
        <p class="MsoNormal">|   --with-system-zlib<o:p></o:p></p>
        <p class="MsoNormal">|   --with-system-bz2<o:p></o:p></p>
        <p class="MsoNormal">|   --with-system-libevent<o:p></o:p></p>
        <p class="MsoNormal">|   --with-system-libvpx<o:p></o:p></p>
        <p class="MsoNormal">|   --with-system-icu<o:p></o:p></p>
        <p class="MsoNormal">|   --enable-system-ffi<o:p></o:p></p>
        <p class="MsoNormal">|   --enable-system-pixman<o:p></o:p></p>
        <p class="MsoNormal">|   --enable-startup-notification<o:p></o:p></p>
        <p class="MsoNormal">|   --enable-pulseaudio<o:p></o:p></p>
        <p class="MsoNormal">|   --disable-tests<o:p></o:p></p>
        <p class="MsoNormal">|   --disable-necko-wifi<o:p></o:p></p>
        <p class="MsoNormal">|   --disable-gconf<o:p></o:p></p>
        <p class="MsoNormal">|   --disable-crashreporter<o:p></o:p></p>
        <p class="MsoNormal">|   --disable-updater<o:p></o:p></p>
        <p class="MsoNormal">|   --disable-debug-symbols<o:p></o:p></p>
        <p class="MsoNormal">| checking for a shell...
          /home/iepl/work/yocto_build/poky/build/tmp/hosttools/sh<o:p></o:p></p>
        <p class="MsoNormal">| checking for host system type...
          x86_64-pc-linux-gnu<o:p></o:p></p>
        <p class="MsoNormal">| checking for target system type...
          aarch64-pdm3-linux-gnu<o:p></o:p></p>
        <p class="MsoNormal">| Traceback (most recent call last):<o:p></o:p></p>
        <p class="MsoNormal">|   File
"/home/iepl/work/yocto_build/poky/build/tmp/work/aarch64-pdm3-linux/firefox/52.9.0esr-r0/firefox-52.9.0esr/configure.py",
          line 107, in &lt;module&gt;<o:p></o:p></p>
        <p class="MsoNormal">|     sys.exit(main(sys.argv))<o:p></o:p></p>
        <p class="MsoNormal">|   File
"/home/iepl/work/yocto_build/poky/build/tmp/work/aarch64-pdm3-linux/firefox/52.9.0esr-r0/firefox-52.9.0esr/configure.py",
          line 26, in main<o:p></o:p></p>
        <p class="MsoNormal">|    
          sandbox.run(os.path.join(os.path.dirname(__file__),
          'moz.configure'))<o:p></o:p></p>
        <p class="MsoNormal">|   File
"/home/iepl/work/yocto_build/poky/build/tmp/work/aarch64-pdm3-linux/firefox/52.9.0esr-r0/firefox-52.9.0esr/python/mozbuild/mozbuild/configure/__init__.py",
          line 359, in run<o:p></o:p></p>
        <p class="MsoNormal">|     raise InvalidOptionError('Unknown
          option: %s' % without_value)<o:p></o:p></p>
        <p class="MsoNormal">|
          mozbuild.configure.options.InvalidOptionError: Unknown option:
          --build<o:p></o:p></p>
        <p class="MsoNormal">| *** Fix above errors and then restart
          with\<o:p></o:p></p>
        <p class="MsoNormal">|                "make -f client.mk build"<o:p></o:p></p>
        <p class="MsoNormal">| client.mk:375: recipe for target
          'configure' failed<o:p></o:p></p>
        <p class="MsoNormal">| make: *** [configure] Error 1<o:p></o:p></p>
        <p class="MsoNormal">| ERROR: oe_runmake failed<o:p></o:p></p>
        <p class="MsoNormal">| WARNING: exit code 1 from a shell
          command.<o:p></o:p></p>
        <p class="MsoNormal">| ERROR: Function failed: do_configure (log
          file is located at
/home/iepl/work/yocto_build/poky/build/tmp/work/aarch64-pdm3-linux/firefox/52.9.0esr-r0/temp/log.do_configure.5847)<o:p></o:p></p>
        <p class="MsoNormal">ERROR: Task
(/home/iepl/work/yocto_build/meta-browser/recipes-browser/firefox/firefox_52.9.0esr.bb:do_configure)
          failed with exit code '1'<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Can anybody provide me a solution or at
          least a  hint, so that I can move forward.<o:p></o:p></p>
        <p class="MsoNormal" style="text-autospace:none"><span
            style="font-size:10.0pt;font-family:&quot;Trebuchet
            MS&quot;,sans-serif;color:black;mso-fareast-language:EN-IN"
            lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal" style="text-autospace:none"><span
            style="font-size:10.0pt;font-family:&quot;Trebuchet
            MS&quot;,sans-serif;color:black;mso-fareast-language:EN-IN"
            lang="EN-US">Best Regards
            <o:p></o:p></span></p>
        <p class="MsoNormal" style="text-autospace:none"><span
            style="font-size:10.0pt;font-family:&quot;Trebuchet
            MS&quot;,sans-serif;color:black;mso-fareast-language:EN-IN"
            lang="EN-US">Kamal Pandey<o:p></o:p></span></p>
        <p class="MsoNormal" style="text-autospace:none"><span
            style="font-size:10.0pt;font-family:&quot;Trebuchet
            MS&quot;,sans-serif;color:black;mso-fareast-language:EN-IN"
            lang="EN-US">Junior Software Engineer</span><span
            style="color:black;mso-fareast-language:EN-IN" lang="EN-US"><o:p></o:p></span></p>
        <p class="MsoNormal" style="text-autospace:none"><span
            style="color:black;mso-fareast-language:EN-IN"><img
              style="width:.3333in;height:.3333in" id="Picture_x0020_1"
              src="cid:part1.FA39F358.6B7AB5D7@clear-code.com"
              alt="ifm_logo_sqrs" class="" width="32" height="32"></span><span
            style="font-size:10.0pt;font-family:&quot;Trebuchet
            MS&quot;,sans-serif;color:black;mso-fareast-language:EN-IN"
            lang="EN-US">ifm engineering pvt. ltd.<o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:8.0pt;font-family:&quot;Trebuchet
            MS&quot;,sans-serif;color:black;mso-fareast-language:EN-IN"
            lang="EN-US">Survey No. 1/10/16, 3rd floor, Above SBI,
            Bavdhan Branch, N.D.A. Road, Bavdhan, Pune, India - 411021 |
            Web:
          </span><span style="mso-fareast-language:EN-IN" lang="EN-US"><a
              href="http://www.ifm.com/" moz-do-not-send="true"><span
                style="font-size:8.0pt;font-family:&quot;Trebuchet
                MS&quot;,sans-serif;color:black">www.ifm.com</span></a></span><span
            style="font-size:8.0pt;font-family:&quot;Trebuchet
            MS&quot;,sans-serif;color:black;mso-fareast-language:EN-IN"
            lang="EN-US"> | Phone: +91-20-22951910 Extn:215 | CIN:
            U29213PN2010FTC13676</span><span
            style="mso-fareast-language:EN-IN"><o:p></o:p></span></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------516C6477A5E6174F8AB2F5F3
Content-Type: image/png;
 name="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <part1.FA39F358.6B7AB5D7@clear-code.com>
Content-Disposition: inline;
 filename="image001.png"

iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAIAAAD8GO2jAAAAAXNSR0IArs4c6QAABftJREFUSEu1
VmlsVFUUPve+bd50oy1tobFQpYsBukBbF3YIoNEGUYmEaEBCxBgRRWOICYIQxSVRFJGIELD4w0Ti
D6JBCJSQCCoBlUVMWQQpVAqky7Sdmffm3cVzZ6ad7vSHnmSSe9+ce75zvrPcS6SU8H8KGQQAkUkU
O9J2jdXXQutFEbyBB4idQ4bl07zZRkYBvZNzgwEwNH1sHTv9mQw2GRQI1STRFKYQIJhgwG3bGPus
OeNjXTcHAhoQIHTiA692tWEAMZKA6onzhCBUfCs4sBALeaTqBf+crf1G0w8AAxneUaQ1XUJnZUoW
9EqSlBR4AgOhJAi3mRvJvmWXTX9Wr1B6A7BIOLQl0yARZqbZLzZhGrrXANLDG34WX08i/oyehiRw
j4U6zOUXrfSC7n/1AOB4fovP9BMIO3zhKedcjfxxE1gqBsJBot/5Fdbc7V7NRJLUCyBqU3DWEbBe
vmXaiTgSvKGn2rdlRy5r0zenLdoJIStPr/9eS0vRrCTIKoZ7q0nxLBg1RwUUq62+QjU9Kdn9Ygw6
2iUJAHJ+1979Zx7alLKoQialZ6UOrzJ0H6WEe0H/0jrtwfXGzE+Mcc+wq4eJNnBxaqYm2tt+WN4F
EKdIANBtpGhj1nvz5RMVHvhh2gZ9QSmsnM6CHR32KhZYS3ypKh9E08BKG6z6peSBFljZlpycgmpx
X8Jnt+Np09JbXWQKP5KAaxiWWsQZ4ar6JTYAlubgQoiWpAcPvRTTUhGgXx01JcmhKz81+Ke8o70+
j/3WQA/XEbHFc0KChVvt16Rw2yV2AyHs/B6yfzHY/SW5C1jysBO2XnWTsGfQPpPM/dCgdrpthOoa
+PsHSW6qfGseoqcwSaRgzAtqdiZwB/KmGw+sj+ycSI0Bo1CNqVsy1Nz2+IkRYyoVgNv4K9tdSX22
zH/UN24hNSRI6gRu8sOrUJu4baJqtZFdLrhDUguASvbLBr1shcRttEekcrNzQaj3+2Z68yThwdvj
N46a/YYCCP+xUx5YBpRqMz+V6YXi/B7JHOuR3c6XY7X2es4c/yrWsW+xHs2taLlAIgGSOxl4JEZy
ZyzY0B4ZUaXllHu7K3XTasxdOHpBjRoyJHSL0/h8EfVH5JntxAEx4yOivuHoUcUjTn5F0iwpOAky
3NIbxxUPEnMTARfnFRDbJDwiAnV6VmkUl0K4SRVnpxedpa2ZoBuAFFMtUcu4wi+aT/izzDXSWiNZ
3iycgFJEtOpdvrXSWHJcsAgYftDtRKYFV66ovT+b3LH4MA7hQU6lvH6MHX9Xv2sqDh9gYBQ91bEt
X8+9r8+1JbiVjtYVABleinNmCIIs40iKUOESbIqYcI+KDmW9FwL3eHIR0qsAtOySaKqGcHcqtc7W
iwGoXYLMLi+FFCJnEm4VgE5NmTOeqOT9N4JV64HPGj0tDqAwyldKr9M6kotrKSQLgxcET+VK4v3p
hbF8Y5FK7kovotS6uFIKIYgqEAE3M6tHZvuU5ZhVs/S54HfLNWoQvGoLnyR6EvVl0uKnIXxbVTcW
0YRF1EolWWVxVkbNFk4z8DCx09EVVNAmLAHqoznl2HUkAu2l65T52CyKYTinPmeX9oCQ2t0P02GF
JNwksY1x/qCC2wJWhqJbEu/6QQjUm+OXYpaRCjzs1j5vzdpKiYY4+DSQ9fuu1P+Tu/hASnScJABQ
tX1Xsd5yQWIHDFy1BBOGCshepxAzTUYCsR0a8SRce6yxtCAn9qX3lRncZOs6ehOLb4gSf0DhXAS3
9XTVgfunzu062eNuwnKzVzTj7S1ZcIi2Y16qHybPaT1V9k1FN+u9I4gZZSDw2aK3/gV2uiRqFg0g
UcejGaQ84Arzz4q9lVPndHtC9aGoi0dctB19G46+afk0qSdjK6mZ3A0nToq65ByIONcy54cmby0v
HNnXlcGejmEPWmtfMet2+LygjtVETZyR0ekqkRCcrC41GjOqgyVrxpRMTO3leSfUYAAxHeycwN9n
nauH4PY56d6SnAsjnaXcg5PAGjVlZHayPTCJ/edgkPTGJlzPYXSHavgXbHvARy3nHeMAAAAASUVO
RK5CYII=

--------------516C6477A5E6174F8AB2F5F3--

--------------C6E3C746D92F0EE337E5263F--
