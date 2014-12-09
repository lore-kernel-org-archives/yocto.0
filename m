Return-Path: <Liviu.Gheorghisan@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EF52E00A01; Tue,  9 Dec 2014 08:55:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 8DD59E0082F
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 08:54:55 -0800 (PST)
Received: from [192.168.14.95] (192.168.14.95) by smtp.enea.com (172.21.1.208)
	with Microsoft SMTP Server id 14.3.158.1;
	Tue, 9 Dec 2014 17:54:51 +0100
Message-ID: <5487295A.6030403@enea.com>
Date: Tue, 9 Dec 2014 18:54:50 +0200
From: Liviu Gheorghisan <liviu.gheorghisan@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Jim Rafert <jimr@spectralogic.com>, "Yu, Chan KitX"
	<chan.kitx.yu@intel.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <86196249137E0843B2E0673D4F731E0C0108E2902F@reactor.sldomain.com>	<0E4D391FE2BDEC45AA0B4E32D6BD598A25014B@PGSMSX101.gar.corp.intel.com>,
	<548722E0.3030907@enea.com>
	<86196249137E0843B2E0673D4F731E0C0108E2919B@reactor.sldomain.com>
In-Reply-To: <86196249137E0843B2E0673D4F731E0C0108E2919B@reactor.sldomain.com>
X-Originating-IP: [192.168.14.95]
Subject: Re: Building clang with Yocto
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
X-List-Received-Date: Tue, 09 Dec 2014 16:55:09 -0000
Content-Type: multipart/alternative;
	boundary="------------080709010204010408090106"

--------------080709010204010408090106
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Hello Jim,

You must add your override of do_install_class-nativesdk() in the recipe 
that builds clang/llvm that will not affect how gcc gets installed in 
the SDK.
You can have as many do_install_class-nativesdk() overrides across 
various recipes as you like, without them conflicting. Basically this is 
how every tool from the SDK gets installed there.

- Liviu

On 12/09/2014 06:47 PM, Jim Rafert wrote:
> Hi Liviu,
>
> Thanks for the tip.  I had everything but the override for 
> do_install_class-nativesdk().
>
> One question please.
>
> Will that override prevent the gcc compilers from being installed in 
> nativesdk?  Or should I duplicate the existing 
> do_install_class-nativesdk(), and add the clang stuff?
>
> -Jim-
>
>
> ------------------------------------------------------------------------
> *From:* Liviu Gheorghisan [liviu.gheorghisan@enea.com]
> *Sent:* Tuesday, December 09, 2014 9:27 AM
> *To:* Yu, Chan KitX; Jim Rafert; yocto@yoctoproject.org
> *Subject:* Re: [yocto] Building clang with Yocto
>
> Hello Yu, Jim
>
> I think you can get the clang executable into the SDK installer script 
> with something like this:
>
> 1. Add this dependency in nativesdk-packagegroup-sdk-host.bb:
> *RDEPENDS_${PN} += "nativesdk-<name-of-clang-recipe>"*
>
> 2. In the clang recipe add this install() overwrite for the nativesdk 
> class - this will install it into the SDK sysroot:
> *do_install_class-nativesdk() {
>     install -d ${D}${bindir}
>     install -m 0755 clang ${D}${bindir}
> }*
>
> 3. The clang recipe (I don't know if it has a recipe of its own, or 
> it's part of the LLVM recipe) should also inherit from nativesdk:
> *BBCLASSEXTEND = "nativesdk"*
>
> Basically this should get your clang executable inside the SDK 
> installer. Sure you can add more executables related to clang (like 
> the llvm-related ones) in the install_class-nativesdk() function.
>
> - Liviu Gheorghisan
>
> On 12/09/2014 04:36 AM, Yu, Chan KitX wrote:
>> I **think** I'm just inches away from success. I think I just need to invoke a correct install command somewhere in the do_install function but so far I have not managed to do so. But right now the alternative way of jamming the compiler into the SDK sounds tempting to me.
>>
>> -----Original Message-----
>> From: Yu, Chan KitX
>> Sent: Tuesday, December 09, 2014 9:19 AM
>> To: 'Jim Rafert';yocto@yoctoproject.org
>> Subject: RE: Building clang with Yocto
>>
>> Hi Jim,
>>
>> How did you jam the clang compiler into the SDK tarball?
>>
>> Chan Kit
>>
>> -----Original Message-----
>> From: Jim Rafert [mailto:jimr@spectralogic.com]
>> Sent: Tuesday, December 09, 2014 1:48 AM
>> To:yocto@yoctoproject.org; Yu, Chan KitX
>> Subject: Building clang with Yocto
>>
>> Hello Chan,
>>
>> I have been working to a similar goal, to include clang in the toolchain to be used for compiling applications to run on the target.  Using clang to compile the OS and kernel are not required or  desired by me.
>>
>> You may get some insight from the thread I started in November on the subject.  I'm not sure that this contains all of the posts on the subject. You may want to search the archive for November.
>>
>> I have not been successful yet in getting clang actually packaged in the toolchain, in the Yocto build,  but at least it builds.  I have a postbuild script that takes the built clang compiler from the work directory and jams it into the SDK tarball that is embedded in the sdk install script.
>>
>> -Jim-
>>
>>
>> ________________________________________
>> From:yocto-bounces@yoctoproject.org  [yocto-bounces@yoctoproject.org] on behalf ofyocto-request@yoctoproject.org  [yocto-request@yoctoproject.org]
>> Sent: Monday, December 08, 2014 2:56 AM
>> To:yocto@yoctoproject.org
>> Subject: yocto Digest, Vol 51, Issue 26
>>
>> Send yocto mailing list submissions to
>>          yocto@yoctoproject.org
>>
>> To subscribe or unsubscribe via the World Wide Web, visit
>>          https://lists.yoctoproject.org/listinfo/yocto
>> or, via email, send a message with subject or body 'help' to
>>          yocto-request@yoctoproject.org
>>
>> You can reach the person managing the list at
>>          yocto-owner@yoctoproject.org
>>
>> When replying, please edit your Subject line so it is more specific than "Re: Contents of yocto digest..."
>

-- 
Liviu Gheorghisan
Software Engineer

Enea Romania
Splaiul Independentei 319, OB403A,
District 6, Bucharest,
Romania, 060044

http://www.enea.com


--------------080709010204010408090106
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hello Jim,<br>
    <br>
    You must add your override of do_install_class-nativesdk() in the
    recipe that builds clang/llvm that will not affect how gcc gets
    installed in the SDK.<br>
    You can have as many do_install_class-nativesdk() overrides across
    various recipes as you like, without them conflicting. Basically
    this is how every tool from the SDK gets installed there.<br>
    <br>
    - Liviu<br>
    <br>
    <div class="moz-cite-prefix">On 12/09/2014 06:47 PM, Jim Rafert
      wrote:<br>
    </div>
    <blockquote
cite="mid:86196249137E0843B2E0673D4F731E0C0108E2919B@reactor.sldomain.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style id="owaParaStyle" type="text/css">P {margin-top:0;margin-bottom:0;}</style>
      <div style="direction: ltr;font-family: Tahoma;color:
        #000000;font-size: 10pt;">Hi Liviu,<br>
        <br>
        Thanks for the tip.  I had everything but the override for
        do_install_class-nativesdk().<br>
        <br>
        One question please.<br>
        <br>
        Will that override prevent the gcc compilers from being
        installed in nativesdk?  Or should I duplicate the existing
        do_install_class-nativesdk(), and add the clang stuff?<br>
        <br>
        -Jim-<br>
        <div><br>
          <div style="font-family:Tahoma; font-size:13px"><br>
          </div>
        </div>
        <div style="font-family: Times New Roman; color: #000000;
          font-size: 16px">
          <hr tabindex="-1">
          <div style="direction: ltr;" id="divRpF84833"><font
              color="#000000" face="Tahoma" size="2"><b>From:</b> Liviu
              Gheorghisan [<a class="moz-txt-link-abbreviated" href="mailto:liviu.gheorghisan@enea.com">liviu.gheorghisan@enea.com</a>]<br>
              <b>Sent:</b> Tuesday, December 09, 2014 9:27 AM<br>
              <b>To:</b> Yu, Chan KitX; Jim Rafert;
              <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
              <b>Subject:</b> Re: [yocto] Building clang with Yocto<br>
            </font><br>
          </div>
          <div>Hello Yu, Jim<br>
            <br>
            I think you can get the clang executable into the SDK
            installer script with something like this:<br>
            <br>
            1. Add this dependency in
            nativesdk-packagegroup-sdk-host.bb:<br>
            <b><big><tt>RDEPENDS_${PN} +=
                  "nativesdk-&lt;name-of-clang-recipe&gt;"</tt></big></b><br>
            <br>
            2. In the clang recipe add this install() overwrite for the
            nativesdk class - this will install it into the SDK sysroot:<br>
            <b><big><tt>do_install_class-nativesdk() {</tt><tt><br>
                </tt><tt>    install -d ${D}${bindir}</tt><tt><br>
                </tt><tt>    install -m 0755 clang ${D}${bindir}</tt><tt><br>
                </tt><tt>}</tt></big></b><br>
            <br>
            3. The clang recipe (I don't know if it has a recipe of its
            own, or it's part of the LLVM recipe) should also inherit
            from nativesdk:<br>
            <b><tt><big>BBCLASSEXTEND = "nativesdk"</big></tt></b><br>
            <br>
            Basically this should get your clang executable inside the
            SDK installer. Sure you can add more executables related to
            clang (like the llvm-related ones) in the
            install_class-nativesdk() function.<br>
            <br>
            - Liviu Gheorghisan<br>
            <br>
            <div class="moz-cite-prefix">On 12/09/2014 04:36 AM, Yu,
              Chan KitX wrote:<br>
            </div>
            <blockquote type="cite">
              <pre>I **think** I'm just inches away from success. I think I just need to invoke a correct install command somewhere in the do_install function but so far I have not managed to do so. But right now the alternative way of jamming the compiler into the SDK sounds tempting to me.

-----Original Message-----
From: Yu, Chan KitX 
Sent: Tuesday, December 09, 2014 9:19 AM
To: 'Jim Rafert'; <a moz-do-not-send="true" class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org" target="_blank">yocto@yoctoproject.org</a>
Subject: RE: Building clang with Yocto

Hi Jim,

How did you jam the clang compiler into the SDK tarball?

Chan Kit

-----Original Message-----
From: Jim Rafert [<a moz-do-not-send="true" class="moz-txt-link-freetext" href="mailto:jimr@spectralogic.com" target="_blank">mailto:jimr@spectralogic.com</a>] 
Sent: Tuesday, December 09, 2014 1:48 AM
To: <a moz-do-not-send="true" class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org" target="_blank">yocto@yoctoproject.org</a>; Yu, Chan KitX
Subject: Building clang with Yocto

Hello Chan,

I have been working to a similar goal, to include clang in the toolchain to be used for compiling applications to run on the target.  Using clang to compile the OS and kernel are not required or  desired by me.  

You may get some insight from the thread I started in November on the subject.  I'm not sure that this contains all of the posts on the subject. You may want to search the archive for November.

I have not been successful yet in getting clang actually packaged in the toolchain, in the Yocto build,  but at least it builds.  I have a postbuild script that takes the built clang compiler from the work directory and jams it into the SDK tarball that is embedded in the sdk install script.

-Jim-


________________________________________
From: <a moz-do-not-send="true" class="moz-txt-link-abbreviated" href="mailto:yocto-bounces@yoctoproject.org" target="_blank">yocto-bounces@yoctoproject.org</a> [<a moz-do-not-send="true" class="moz-txt-link-abbreviated" href="mailto:yocto-bounces@yoctoproject.org" target="_blank">yocto-bounces@yoctoproject.org</a>] on behalf of <a moz-do-not-send="true" class="moz-txt-link-abbreviated" href="mailto:yocto-request@yoctoproject.org" target="_blank">yocto-request@yoctoproject.org</a> [<a moz-do-not-send="true" class="moz-txt-link-abbreviated" href="mailto:yocto-request@yoctoproject.org" target="_blank">yocto-request@yoctoproject.org</a>]
Sent: Monday, December 08, 2014 2:56 AM
To: <a moz-do-not-send="true" class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org" target="_blank">yocto@yoctoproject.org</a>
Subject: yocto Digest, Vol 51, Issue 26

Send yocto mailing list submissions to
        <a moz-do-not-send="true" class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org" target="_blank">yocto@yoctoproject.org</a>

To subscribe or unsubscribe via the World Wide Web, visit
        <a moz-do-not-send="true" class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto" target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a>
or, via email, send a message with subject or body 'help' to
        <a moz-do-not-send="true" class="moz-txt-link-abbreviated" href="mailto:yocto-request@yoctoproject.org" target="_blank">yocto-request@yoctoproject.org</a>

You can reach the person managing the list at
        <a moz-do-not-send="true" class="moz-txt-link-abbreviated" href="mailto:yocto-owner@yoctoproject.org" target="_blank">yocto-owner@yoctoproject.org</a>

When replying, please edit your Subject line so it is more specific than "Re: Contents of yocto digest..."
</pre>
            </blockquote>
            <br>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Liviu Gheorghisan
Software Engineer

Enea Romania
Splaiul Independentei 319, OB403A, 
District 6, Bucharest, 
Romania, 060044

<a class="moz-txt-link-freetext" href="http://www.enea.com">http://www.enea.com</a></pre>
  </body>
</html>

--------------080709010204010408090106--
