Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB856E00EBC; Wed, 20 Jun 2018 07:37:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ajlennon[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3805E00D38
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2018 07:37:34 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id r15-v6so154893wmc.1
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2018 07:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=MH83QW1P6r8aCvRLgeT312rL/7jTO067eiH1fsa/gy0=;
	b=DZxGRdKOMCNRD4/96ucORfOKdGxXKTumgz7Fz//J3yVTslW4bPGbGfqDv8xRSfVUvY
	bA5/2lyTSPzZhDpCUfqynCsttRJ+mFXyPHH53MOPqcFptLtuqhvL/+LF2KQKgoCq3gtN
	ULdqy4U8IVl1ZDtNcJ3Tz405KqOlrZ+sdy9GCj8xb/l8AuDp3/yf15qflQxD00tRuZhJ
	aDyY52YWaa0NW73D/MLpQTsORGuQkvrUs1oRGWiv+xil+Mvsz6sD6mCQsOMHmcNsCRsn
	dGVE/W4ubzqO3FqyCAkt1ZtDiRDegqJVCdyM1SsTxVE8uYXyfnykHK6Iq+KyjV576/Oa
	aU9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=MH83QW1P6r8aCvRLgeT312rL/7jTO067eiH1fsa/gy0=;
	b=Y9rrBiPyY8oQvKUy9k66ZYSu2BitRzUugVNcb/1u7FTWa8Akf0r+BIIpEsxLEiEH2R
	sxW4sVwkyXgVadA0NN4bHBBfJ0HymrsKWty6eGHT38IgNAXqlhhysIYwM1QT+MtcWC5w
	emqIZd/oQud/CS+EVlmCKEI5KUjKCqQLi2K87BvfGl3sYojKg+zqZ5rv8eRUFaYQSlEq
	LA4/oBhr9lSF3xgB58PBGV8WGmeGXCNpo7DcW2SE50wo/huQg1vb3rG8wmCRbONDmcJi
	wyYF6gYfsm4M+N5gvY0mkdCAvVv4JFfPq508Ursm5UMj3FZTELyV0vYN/FCZnkoJmibB
	nM5Q==
X-Gm-Message-State: APt69E343YxtZOuY3+05MsTY0R+LbiTnBdgiMwP2dFYOjEAqliPZVF3c
	eAIzUVKjAMSQiuvUpNDNqgU1RYw7
X-Google-Smtp-Source: ADUXVKIc/tv3GmkKfmHM37NDPfsa/O7oAdmwbii/XS7HgPC0L/icIVKfhndSu3En5O7CrR3cM7uJ1A==
X-Received: by 2002:a1c:5c93:: with SMTP id
	q141-v6mr1916628wmb.77.1529505453307; 
	Wed, 20 Jun 2018 07:37:33 -0700 (PDT)
Received: from [192.168.0.133]
	(cpc111193-live30-2-0-cust656.17-2.cable.virginm.net.
	[92.232.58.145]) by smtp.gmail.com with ESMTPSA id
	q77-v6sm4706358wmg.25.2018.06.20.07.37.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 20 Jun 2018 07:37:32 -0700 (PDT)
To: Craig McQueen <craig.mcqueen@innerrange.com>
References: <fbde2f2fc27041fbb13d6f9c9eb3f881@innerrange.com>
	<9178069e17354c5daa14353f7e248009@innerrange.com>
	<48aca69585934356ae110e8647a8453f@innerrange.com>
	<CAMKF1spZJZ0WCaxHKa4e5O4EJtWH=Z1bMcnjEMSSGzUKzjz5qA@mail.gmail.com>
	<f1091f7c-f86e-a84d-8a5a-7ed3192a1598@gmail.com>
	<aae33ff7aa8d4d158c191abc3ecb8ec8@innerrange.com>
From: Alex Lennon <ajlennon@gmail.com>
Message-ID: <0f082b6e-f3c8-b426-adba-19e0e95fc3aa@gmail.com>
Date: Wed, 20 Jun 2018 15:37:31 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <aae33ff7aa8d4d158c191abc3ecb8ec8@innerrange.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: mono-native is trying to install files into a shared area...
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
X-List-Received-Date: Wed, 20 Jun 2018 14:37:38 -0000
Content-Type: multipart/alternative;
	boundary="------------C5280C4094BA20FC0A7A9781"
Content-Language: en-GB

--------------C5280C4094BA20FC0A7A9781
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit



On 20/06/2018 08:46, Craig McQueen wrote:
>
> *From:*Alex Lennon
>
> On 12/06/2018 05:43, Khem Raj wrote:
>
>     On Mon, Jun 11, 2018 at 8:36 PM Craig McQueen
>     <craig.mcqueen@innerrange.com
>     <mailto:craig.mcqueen@innerrange.com>> wrote:
>
>         I wrote:
>         >
>         > I wrote:
>         > >
>         > > Lately, I'm trying to upgrade to a later version of mono,
>         5.4.1.6.
>         > > When I try to do a build of my Yocto image, bitbake gets
>         to the end of
>         > > building mono- native, and then gets an error:
>         > >
>         > >
>         > > ERROR: mono-native-5.4.1.6-r0 do_populate_sysroot: The
>         recipe mono-
>         > > native is trying to install files into a shared area when
>         those files already
>         > exist.
>         > > Those files and their manifest location are:
>         > > /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
>         > > linux/usr/lib/mono/lldb/mono.py
>         > >  Matched in b''
>         > > /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
>         > > linux/usr/lib/mono/4.6.1-api/System.Web.Http.SelfHost.dll
>         > >  Matched in b''
>         > > ...
>         > > /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
>         > >
>         >
>         linux/usr/lib/mono/xbuild/14.0/bin/MSBuild/Microsoft.Build.CommonTypes.
>         > > xsd
>         > >  Matched in b''
>         > > /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
>         > >
>         linux/usr/lib/mono/xbuild/14.0/bin/MSBuild/Microsoft.Build.Core.xsd
>         > >  Matched in b''
>         > > /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
>         > >
>         >
>         linux/usr/lib/mono/xbuild/14.0/Microsoft.Common.targets/ImportAfter/Mi
>         > > c
>         > > rosoft.NuGet.ImportAfter.targets
>         > >  Matched in b''
>         > > Please verify which recipe should provide the above files.
>         > > The build has stopped as continuing in this scenario WILL
>         break
>         > > things, if not now, possibly in the future (we've seen
>         builds fail
>         > > several months later). If the system knew how to recover
>         from this
>         > > automatically it would however there are several different
>         scenarios
>         > > which can result in this and we don't know which one this
>         is. It may
>         > > be you have switched providers of something like
>         virtual/kernel (e.g.
>         > > from linux-yocto to linux-yocto-dev), in that case you
>         need to execute the
>         > clean task for both recipes and it will resolve this error.
>         > > It may be you changed DISTRO_FEATURES from systemd to udev
>         or vice
>         > > versa. Cleaning those recipes should again resolve this
>         error however
>         > > switching DISTRO_FEATURES on an existing build directory
>         is not
>         > > supported, you should really clean out tmp and rebuild
>         (reusing sstate
>         > > should be safe). It could be the overlapping files
>         detected are
>         > > harmless in which case adding them to SSTATE_DUPWHITELIST
>         may be the
>         > > correct solution. It could also be your buil  d is
>         including two
>         > > different conflicting versions of things (e.g. bluez
>         > > 4 and bluez 5 and the correct solution for that would be
>         to resolve
>         > > the conflict. If in doubt, please ask on the mailing list,
>         sharing the
>         > > error and filelist above.
>         > > ERROR: mono-native-5.4.1.6-r0 do_populate_sysroot: If the
>         above
>         > > message is too much, the simpler version is you're advised
>         to wipe out
>         > > tmp and rebuild (reusing sstate is fine). That will likely
>         fix things
>         > > in most (but not all) cases.
>         > > ERROR: mono-native-5.4.1.6-r0 do_populate_sysroot:
>         Function failed:
>         > > sstate_task_postfunc
>         > > ERROR: Logfile of failure stored in:
>         > > /home/craigm/yocto/poky/build/tmp/work/x86_64-linux/mono-
>         > > native/5.4.1.6-r0/temp/log.do_populate_sysroot.108358
>         > > ERROR: Task
>         (/home/craigm/yocto/poky/build/../../meta-mono/recipes-
>         > > mono/mono/mono-native_5.4.1.6.bb:do_populate_sysroot)
>         failed with
>         > exit
>         > > code '1'
>         > > NOTE: Tasks Summary: Attempted 670 tasks of which 662
>         didn't need to
>         > > be rerun and 1 failed.
>         > >
>         > > Summary: 1 task failed:
>         > >  /home/craigm/yocto/poky/build/../../meta-mono/recipes-
>         > > mono/mono/mono-native_5.4.1.6.bb:do_populate_sysroot
>         > > Summary: There were 3 ERROR messages shown, returning a
>         non-zero exit
>         > > code.
>         > >
>         > >
>         > > I'm building with Yocto poky morty branch (currently commit
>         > > 0e730770a9), meta-mono master (commit dced6635ca). I'm
>         building on
>         > Ubuntu 16.04.4.
>         > >
>         > > I have tried deleting the tmp directory, deleting all mono and
>         > > mono-native from sstate, cleaning mono and meta-mono, etc,
>         to no avail.
>         > >
>         > > It's puzzling why I'm getting these errors, because it
>         says "Matched
>         > > in b''", so the files are not clashing with another
>         recipe. It seems
>         > > to be somehow trying to install its own files twice, or
>         something like
>         > > that. If I look under
>         tmp/work/x86_64-linux/mono-native/5.4.1.6-r0/,
>         > > then I see the files present in both:
>         > >
>         > >
>         sysroot-destdir/home/craigm/yocto/poky/build/tmp/sysroots/x86_64-
>         > linux
>         > > / and
>         image/home/craigm/yocto/poky/build/tmp/sysroots/x86_64-linux/
>         > >
>         > > Is that part of the problem?
>         >
>         >
>         > I haven't had any success figuring out what is going on. I
>         tried doing a new
>         > clean build, and got the same error.
>         >
>         > Does anyone else have this problem? Is it an incompatibility
>         with Yocto
>         > morty, which I'm using? Any pointers on how to narrow down
>         the cause?
>
>         I tried updating from morty to rocko, and no longer got this
>         error. So it seems it's somehow an issue with meta-mono in
>         conjunction with morty.
>
>     That’s due to the fact that Rocko onwards OE switched to using
>     recipe specific sysroots
>
> Hey Craig,
>
> There was an separate issue with the morty branch building which 
> hopefully I've resolved with a recent cherry-pick.
>
> I'm not intending atm to update support for more recent releases of 
> Mono on Morty due to the issue you've identified above.
>
> (This is because I think it's more valuable to put the time I have 
> available into supporting the current Mono release on master, T-P etc. 
> - which I'll hopefully be looking at shortly).
>
> I'd be very pleased to receive PRs though if you have the time to 
> address this...
>
> Thank you for the information.
>
> What is the cherry-pick which hopefully resolved this issue?
>
> I can’t provide a PR since I don’t understand the problem at this 
> point. But, I agree it’s probably not spending effort on morty since I 
> think its support will end soon. I’m in the process of updating to rocko.
>
> Regards,
>
> Craig
>

http://git.yoctoproject.org/cgit/cgit.cgi/meta-mono/log/?h=morty

Regards, Alex


--------------C5280C4094BA20FC0A7A9781
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 20/06/2018 08:46, Craig McQueen
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:aae33ff7aa8d4d158c191abc3ecb8ec8@innerrange.com">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <meta name="Generator" content="Microsoft Word 15 (filtered
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
        <p class="MsoNormal"><b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:windowtext"
              lang="EN-US">From:</span></b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:windowtext"
            lang="EN-US"> Alex Lennon<br>
            <br>
          </span><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <div>
          <p class="MsoNormal">On 12/06/2018 05:43, Khem Raj wrote:<o:p></o:p></p>
        </div>
        <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
          <div>
            <p class="MsoNormal"><o:p> </o:p></p>
          </div>
          <div>
            <p class="MsoNormal"><o:p> </o:p></p>
            <div>
              <div>
                <p class="MsoNormal">On Mon, Jun 11, 2018 at 8:36 PM
                  Craig McQueen &lt;<a
                    href="mailto:craig.mcqueen@innerrange.com"
                    moz-do-not-send="true">craig.mcqueen@innerrange.com</a>&gt;
                  wrote:<o:p></o:p></p>
              </div>
              <blockquote style="border:none;border-left:solid #CCCCCC
                1.0pt;padding:0cm 0cm 0cm
                6.0pt;margin-left:4.8pt;margin-right:0cm">
                <p class="MsoNormal">I wrote:<br>
                  &gt; <br>
                  &gt; I wrote:<br>
                  &gt; &gt;<br>
                  &gt; &gt; Lately, I'm trying to upgrade to a later
                  version of mono, 5.4.1.6.<br>
                  &gt; &gt; When I try to do a build of my Yocto image,
                  bitbake gets to the end of<br>
                  &gt; &gt; building mono- native, and then gets an
                  error:<br>
                  &gt; &gt;<br>
                  &gt; &gt;<br>
                  &gt; &gt; ERROR: mono-native-5.4.1.6-r0
                  do_populate_sysroot: The recipe mono-<br>
                  &gt; &gt; native is trying to install files into a
                  shared area when those files already<br>
                  &gt; exist.<br>
                  &gt; &gt; Those files and their manifest location are:<br>
                  &gt; &gt;   
                  /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-<br>
                  &gt; &gt; linux/usr/lib/mono/lldb/mono.py<br>
                  &gt; &gt;  Matched in b''<br>
                  &gt; &gt; 
                  /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-<br>
                  &gt; &gt;
                  linux/usr/lib/mono/4.6.1-api/System.Web.Http.SelfHost.dll<br>
                  &gt; &gt;  Matched in b''<br>
                  &gt; &gt; ...<br>
                  &gt; &gt;
                  /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-<br>
                  &gt; &gt;<br>
                  &gt;
                  linux/usr/lib/mono/xbuild/14.0/bin/MSBuild/Microsoft.Build.CommonTypes.<br>
                  &gt; &gt; xsd<br>
                  &gt; &gt;  Matched in b''<br>
                  &gt; &gt; 
                  /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-<br>
                  &gt; &gt;
                  linux/usr/lib/mono/xbuild/14.0/bin/MSBuild/Microsoft.Build.Core.xsd<br>
                  &gt; &gt;  Matched in b''<br>
                  &gt; &gt; 
                  /home/craigm/yocto/poky/build/tmp/sysroots/x86_64-<br>
                  &gt; &gt;<br>
                  &gt;
                  linux/usr/lib/mono/xbuild/14.0/Microsoft.Common.targets/ImportAfter/Mi<br>
                  &gt; &gt; c<br>
                  &gt; &gt; rosoft.NuGet.ImportAfter.targets<br>
                  &gt; &gt;  Matched in b''<br>
                  &gt; &gt; Please verify which recipe should provide
                  the above files.<br>
                  &gt; &gt; The build has stopped as continuing in this
                  scenario WILL break<br>
                  &gt; &gt; things, if not now, possibly in the future
                  (we've seen builds fail<br>
                  &gt; &gt; several months later). If the system knew
                  how to recover from this<br>
                  &gt; &gt; automatically it would however there are
                  several different scenarios<br>
                  &gt; &gt; which can result in this and we don't know
                  which one this is. It may<br>
                  &gt; &gt; be you have switched providers of something
                  like virtual/kernel (e.g.<br>
                  &gt; &gt; from linux-yocto to linux-yocto-dev), in
                  that case you need to execute the<br>
                  &gt; clean task for both recipes and it will resolve
                  this error.<br>
                  &gt; &gt; It may be you changed DISTRO_FEATURES from
                  systemd to udev or vice<br>
                  &gt; &gt; versa. Cleaning those recipes should again
                  resolve this error however<br>
                  &gt; &gt; switching DISTRO_FEATURES on an existing
                  build directory is not<br>
                  &gt; &gt; supported, you should really clean out tmp
                  and rebuild (reusing sstate<br>
                  &gt; &gt; should be safe). It could be the overlapping
                  files detected are<br>
                  &gt; &gt; harmless in which case adding them to
                  SSTATE_DUPWHITELIST may be the<br>
                  &gt; &gt; correct solution. It could also be your
                  buil  d is including two<br>
                  &gt; &gt; different conflicting versions of things
                  (e.g. bluez<br>
                  &gt; &gt; 4 and bluez 5 and the correct solution for
                  that would be to resolve<br>
                  &gt; &gt; the conflict. If in doubt, please ask on the
                  mailing list, sharing the<br>
                  &gt; &gt; error and filelist above.<br>
                  &gt; &gt; ERROR: mono-native-5.4.1.6-r0
                  do_populate_sysroot: If the above<br>
                  &gt; &gt; message is too much, the simpler version is
                  you're advised to wipe out<br>
                  &gt; &gt; tmp and rebuild (reusing sstate is fine).
                  That will likely fix things<br>
                  &gt; &gt; in most (but not all) cases.<br>
                  &gt; &gt; ERROR: mono-native-5.4.1.6-r0
                  do_populate_sysroot: Function failed:<br>
                  &gt; &gt; sstate_task_postfunc<br>
                  &gt; &gt; ERROR: Logfile of failure stored in:<br>
                  &gt; &gt;
                  /home/craigm/yocto/poky/build/tmp/work/x86_64-linux/mono-<br>
                  &gt; &gt;
                  native/5.4.1.6-r0/temp/log.do_populate_sysroot.108358<br>
                  &gt; &gt; ERROR: Task
                  (/home/craigm/yocto/poky/build/../../meta-mono/recipes-<br>
                  &gt; &gt;
                  mono/mono/mono-native_5.4.1.6.bb:do_populate_sysroot)
                  failed with<br>
                  &gt; exit<br>
                  &gt; &gt; code '1'<br>
                  &gt; &gt; NOTE: Tasks Summary: Attempted 670 tasks of
                  which 662 didn't need to<br>
                  &gt; &gt; be rerun and 1 failed.<br>
                  &gt; &gt;<br>
                  &gt; &gt; Summary: 1 task failed:<br>
                  &gt; &gt; 
                   /home/craigm/yocto/poky/build/../../meta-mono/recipes-<br>
                  &gt; &gt;
                  mono/mono/mono-native_5.4.1.6.bb:do_populate_sysroot<br>
                  &gt; &gt; Summary: There were 3 ERROR messages shown,
                  returning a non-zero exit<br>
                  &gt; &gt; code.<br>
                  &gt; &gt;<br>
                  &gt; &gt;<br>
                  &gt; &gt; I'm building with Yocto poky morty branch
                  (currently commit<br>
                  &gt; &gt; 0e730770a9), meta-mono master (commit
                  dced6635ca). I'm building on<br>
                  &gt; Ubuntu 16.04.4.<br>
                  &gt; &gt;<br>
                  &gt; &gt; I have tried deleting the tmp directory,
                  deleting all mono and<br>
                  &gt; &gt; mono-native from sstate, cleaning mono and
                  meta-mono, etc, to no avail.<br>
                  &gt; &gt;<br>
                  &gt; &gt; It's puzzling why I'm getting these errors,
                  because it says "Matched<br>
                  &gt; &gt; in b''", so the files are not clashing with
                  another recipe. It seems<br>
                  &gt; &gt; to be somehow trying to install its own
                  files twice, or something like<br>
                  &gt; &gt; that. If I look under
                  tmp/work/x86_64-linux/mono-native/5.4.1.6-r0/,<br>
                  &gt; &gt; then I see the files present in both:<br>
                  &gt; &gt;<br>
                  &gt; &gt;
                  sysroot-destdir/home/craigm/yocto/poky/build/tmp/sysroots/x86_64-<br>
                  &gt; linux<br>
                  &gt; &gt; / and
                  image/home/craigm/yocto/poky/build/tmp/sysroots/x86_64-linux/<br>
                  &gt; &gt;<br>
                  &gt; &gt; Is that part of the problem?<br>
                  &gt; <br>
                  &gt; <br>
                  &gt; I haven't had any success figuring out what is
                  going on. I tried doing a new<br>
                  &gt; clean build, and got the same error.<br>
                  &gt; <br>
                  &gt; Does anyone else have this problem? Is it an
                  incompatibility with Yocto<br>
                  &gt; morty, which I'm using? Any pointers on how to
                  narrow down the cause?<br>
                  <br>
                  I tried updating from morty to rocko, and no longer
                  got this error. So it seems it's somehow an issue with
                  meta-mono in conjunction with morty.<o:p></o:p></p>
              </blockquote>
              <div>
                <p class="MsoNormal"><o:p> </o:p></p>
              </div>
              <div>
                <p class="MsoNormal">That’s due to the fact that Rocko
                  onwards OE switched to using recipe specific sysroots <o:p></o:p></p>
              </div>
              <p class="MsoNormal"><o:p> </o:p></p>
            </div>
          </div>
        </blockquote>
        <p class="MsoNormal" style="margin-bottom:12.0pt">Hey Craig,<br>
          <br>
          There was an separate issue with the morty branch building
          which hopefully I've resolved with a recent cherry-pick.<br>
          <br>
          I'm not intending atm to update support for more recent
          releases of Mono on Morty due to the issue you've identified
          above.<br>
          <br>
          (This is because I think it's more valuable to put the time I
          have available into supporting the current Mono release on
          master, T-P etc. - which I'll hopefully be looking at
          shortly).<br>
          <br>
          I'd be very pleased to receive PRs though if you have the time
          to address this...<br>
          <br>
          <span style="color:#1F497D"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Thank
            you for the information.<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">What
            is the cherry-pick which hopefully resolved this issue?<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">I
            can’t provide a PR since I don’t understand the problem at
            this point. But, I agree it’s probably not spending effort
            on morty since I think its support will end soon. I’m in the
            process of updating to rocko.<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Regards,<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D">Craig<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D"><o:p> </o:p></span></p>
      </div>
    </blockquote>
    <br>
    <a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/meta-mono/log/?h=morty">http://git.yoctoproject.org/cgit/cgit.cgi/meta-mono/log/?h=morty</a><br>
    <br>
    Regards, Alex<br>
    <br>
  </body>
</html>

--------------C5280C4094BA20FC0A7A9781--
