Return-Path: <mickey.happygolucky@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25E5DE00CC8; Thu, 14 Sep 2017 01:04:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mickey.happygolucky[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.50 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.50 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f50.google.com (mail-vk0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E04F5E00CB4
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 01:04:29 -0700 (PDT)
Received: by mail-vk0-f50.google.com with SMTP id w23so2668892vkw.2
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 01:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7G/5fb4Am4efqc51vJh6UWiWhvLotx8ceLsdxU8qgkE=;
	b=PDPlNtH5rgrRB6sJcjTca3oX/tyABc7riob/ff4AMCHvXhjRSSnq2VpJKR5KxExj+a
	oUo7tfaEdHnByyx8f2E6C4mtQoZ8eeKdieac2hDUIGc5FtgtpawsGeSDSGcCV71huquv
	WOwpiBPitC2aqbXsSVwFZGF+ZukeUd2sd6s+4LSLzlpRXLJb9mXijZgX08JJfogbtxTA
	nRkbFbjo8US8F1b0cRXuDbP+1Uvrq2sm66Z0mvvVqTxFPymqIQ2L22ykrU/MfJMfOV5Y
	eU0InC8bnE/Ejc1YZ0rady1XkyNxsDHdZbIJK7TZ8KxwNoxJOD9YUmSgcntCLmPLtz9X
	uQBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7G/5fb4Am4efqc51vJh6UWiWhvLotx8ceLsdxU8qgkE=;
	b=lSTkA5/SMOdqaruaoc/OUkchDN0Fz6s0iz9UY6TPy6UPsZTxdrP50vAtabeUEea73a
	USor5BWnIZUFRvkyZ9k485XVCt/3OiT+5cMJBEY7bX6Zpn8eyClR5xbLoh6TLn/WY1va
	HUpLKh3Exwj0mQ0XyHHyn2K1+43DruI9Z7jDACJ407XFYDrAPTzO0+Rdr89MrZ0D/MkG
	vC/jjqbCpMe9orM5/XAbTLd5Zi7sFt6695s1NO6BEWBorb6f9BpMpqOpVK+ZIfjvVFTS
	E3bbKRESuEc3cQBK8FXgRbrTrUKGoFPgYXbUXUton3x18ERRn2rDih2p1mL5Xp9f0EgG
	It6w==
X-Gm-Message-State: AHPjjUjSyw2h1YK/5nqmfqTdpAYfT4X0udV7+ozWORVwiiPgyI4TC3/X
	aKNkqvdPPF1fbVX4yaPhKCHU56QjqUOz0x7VTKU=
X-Google-Smtp-Source: AOwi7QBdYlt87m4ai8DfhPiuI9PFQ1msHijhIG5GYk5bg2egn2BNncKkT3DhX8NrNVwMzP1OTU0XyX/k6g83NjEGBB0=
X-Received: by 10.31.142.211 with SMTP id q202mr4219360vkd.164.1505376268954; 
	Thu, 14 Sep 2017 01:04:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.201.130 with HTTP; Thu, 14 Sep 2017 01:04:28 -0700 (PDT)
Received: by 10.31.201.130 with HTTP; Thu, 14 Sep 2017 01:04:28 -0700 (PDT)
In-Reply-To: <CAByQQ_qbRAm4_5wqh6Rt0On-6TDs78JDMxEcaH6qZH-SfgGbkA@mail.gmail.com>
References: <8caab74c-84db-d95c-1dc1-4c85ac534f26@gmail.com>
	<c85b9033-3b0d-a973-d074-5f59392c18c3@rsi-elektrotechnik.de>
	<3f743f3c-abcc-2453-284a-55ebb1f3d769@gmail.com>
	<0d539070-2944-2ea0-d847-917ae9a556f9@rsi-elektrotechnik.de>
	<8292ae18-05ae-2f98-0dd3-f56392af92ed@gmail.com>
	<c8622989-4ee6-d34a-d083-4679ed6710f9@rsi-elektrotechnik.de>
	<337a7f6c-0ca1-6505-f5ea-16c355c84f72@gmail.com>
	<CAJTo0LbxgW4Gwjbai-MAaifdFuHKz4rLcf3nTNHuTBX1WBkuEw@mail.gmail.com>
	<CAByQQ_r007RG__TP-XNaWxoH+vBCsOESzAcY2FQJUj+X=UE5eg@mail.gmail.com>
	<CAJTo0LZAwKLB6ZRTw79B9VfPz+ra=CAoJHn8Bzz9Z3ra=jzq3g@mail.gmail.com>
	<CAByQQ_q0mkG2BfK3FGBZgXOSJxzkUAORCZPC5mYiAQ2oB5qgFw@mail.gmail.com>
	<CAJTo0LbsyCZmjhBCHjnQRsedmNc7__KzGi5vhPjh328cXedsKA@mail.gmail.com>
	<23c2a7a6-50fb-d3f1-3cd2-4fc406975367@gmail.com>
	<CAMKF1sqk5L0_51Gv3r7-PjAW7Lj_RKFRGkwpGdOygWPAdpPzAg@mail.gmail.com>
	<7205fa77-6677-581b-7067-fb4d0baad7ab@gmail.com>
	<CAMKF1soVe9msdj8ouWUZF+v-+5nncB7CPB08g_4LkgX7-Ns0qg@mail.gmail.com>
	<663aa40d-78d8-2e9b-e756-55dffe3ce8d5@gmail.com>
	<CAMKF1sr-J4h2M6qcEd=hwsr_+63Ua+Qv5xcuh9AxTWeNcQsbww@mail.gmail.com>
	<CAByQQ_qbRAm4_5wqh6Rt0On-6TDs78JDMxEcaH6qZH-SfgGbkA@mail.gmail.com>
From: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
Date: Thu, 14 Sep 2017 17:04:28 +0900
Message-ID: <CACMwXoUcjJSwiO01SzLZ3NunVMtTbmG0OLV7XwFHn0d8k-xr9Q@mail.gmail.com>
To: Riko Ho <antonius.riko@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: DEBUG: automake-native: class native found in blacklist, disable icecc ?
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
X-List-Received-Date: Thu, 14 Sep 2017 08:04:31 -0000
Content-Type: multipart/alternative; boundary="001a1142fd0ac3af16055921b9df"

--001a1142fd0ac3af16055921b9df
Content-Type: text/plain; charset="UTF-8"

Hi Riko

It seems you use,
poky: pyro
meta-openembedded:master

I think that you should checkout meta-openembedded to pyro branch.

You can get by command like a follows,

$ cd meta-openembedded
$ git checkout -b pyro origin/pyro

Otherwise, checkout poky to master...

I hope your helps.

2017/08/03 0:05 "Riko Ho" <antonius.riko@gmail.com>:

> Still got the same error after installing it? Any other clues?
> On Aug 2, 2017 9:53 PM, "Khem Raj" <raj.khem@gmail.com> wrote:
>
>> On Tue, Aug 1, 2017 at 11:42 PM, Riko Ho <antonius.riko@gmail.com> wrote:
>> > Could it be this one ?
>> >
>> > https://www.devmanuals.net/install/ubuntu/ubuntu-12-04-lts-
>> precise-pangolin/install-libthread-queue-perl.html
>> >
>>
>> yes
>>
>> > Thanks
>> >
>> >
>> > On 02/08/17 14:38, Khem Raj wrote:
>> >
>> > apply the solutions they may work for ubuntu
>> >
>> > On Tue, Aug 1, 2017 at 11:33 PM, Riko Ho <antonius.riko@gmail.com>
>> wrote:
>> >
>> > Dear Yocto Team Member,
>> >
>> > I'm building with Ubuntu 16
>> >
>> >
>> > On 02/08/17 14:31, Khem Raj wrote:
>> >
>> > On Tue, Aug 1, 2017 at 11:18 PM, Riko Ho <antonius.riko@gmail.com>
>> wrote:
>> >
>> > Dear Yocto Team Member,
>> >
>> > That's the branch :
>> >
>> > ======
>> >
>> > meta-poky
>> > meta-yocto-bsp    = "pyro:e5aa1ac23669a45491de9ecffac491c01e70203f"
>> > openembedded-core = "master:2fd0757ae7fd63bc93a4ce8579c6ba0cdbb4c1cd"
>> > meta-openembedded
>> > meta-oe
>> > meta-xfce
>> > meta-gnome
>> > meta-python
>> > meta-multimedia
>> > meta-networking   = "master:b063789560bfb9c60a7a15277b5b3a9839b5ba74"
>> > meta-browser      =
>> > "firefox-52.1.2esr-2:c79cf6c7811afd2cd167e8967e3c29b1e797371e"
>> > meta-ti           = "master:872d418f6e503dea66e3533f43e7a17618183982"
>> >
>> > Initialising tasks: 100%
>> > |###########################################################
>> #####################################################################|
>> > Time: 0:00:08
>> > NOTE: Executing SetScene Tasks
>> > NOTE: Executing RunQueue Tasks
>> > ERROR: automake-native-1.15-r0 do_compile: oe_runmake failed
>> > ERROR: automake-native-1.15-r0 do_compile: Function failed: do_compile
>> (log
>> > file is located at
>> > /home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-
>> native/1.15-r0/temp/log.do_compile.9291)
>> > ERROR: Logfile of failure stored in:
>> > /home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-
>> native/1.15-r0/temp/log.do_compile.9291
>> > Log data follows:
>> > | DEBUG: Executing shell function do_compile
>> > | NOTE: Using icecc
>> > | NOTE: make -j 10
>> > | ERROR: oe_runmake failed
>> > | : && /home/bianchi77/poky/build/tmp/hosttools/mkdir -p doc && {
>> > PATH='/home/bianchi77/poky/build/tmp/work/x86_64-linux/autom
>> ake-native/1.15-r0/build/t/wrap:'$PATH
>> > && export PATH; } && /usr/bin/env perl ../automake-1.15/doc/help2man
>> > --output=doc/automake-1.15.1 automake-1.15
>> > | help2man: can't get `--help' info from automake-1.15
>> >
>> > What OS do you run on build machine ?
>> > if its archlinux then apply this patch to automake
>> >
>> > https://gist.github.com/xywei/03b546054f0d2e2f76c5ac530c88268a
>> >
>> > otherwise if its centos7 then install
>> >
>> > yum install perl-Thread-Queue
>> >
>> >
>> >
>> > | Try `--no-discard-stderr' if option outputs to stderr
>> > | Makefile:3687: recipe for target 'doc/automake-1.15.1' failed
>> > | make: *** [doc/automake-1.15.1] Error 255
>> > | ERROR: Function failed: do_compile (log file is located at
>> > /home/bianchi77/poky/build/tmp/work/x86_64-linux/automake-
>> native/1.15-r0/temp/log.do_compile.9291)
>> > ERROR: Task
>> > (virtual:native:/home/bianchi77/poky/meta/recipes-devtools/
>> automake/automake_1.15.bb:do_compile)
>> > failed with exit code '1'
>> > NOTE: Tasks Summary: Attempted 845 tasks of which 844 didn't need to be
>> > rerun and 1 failed.
>> >
>> > Summary: 1 task failed:
>> >
>> > virtual:native:/home/bianchi77/poky/meta/recipes-devtools/
>> automake/automake_1.15.bb:do_compile
>> > Summary: There were 4 WARNING messages shown.
>> > Summary: There were 2 ERROR messages shown, returning a non-zero exit
>> code.
>> > bianchi77@bianchi77-HP-Pavilion-dv6-Notebook-PC:~/poky/build$
>> >
>> > How can I fix that automake error ?
>> >
>> > I tried to run bitbake core-image-minimal for it.
>> > Thanks,
>> >
>> > On 31/07/17 21:26, Burton, Ross wrote:
>> >
>> > Then the branch you checked out.  git branch will tell you.
>> >
>> > Ross
>> >
>> > On 31 July 2017 at 14:17, Riko Ho <antonius.riko@gmail.com> wrote:
>> >
>> > Git clone ...
>> >
>> > On Jul 31, 2017 9:16 PM, "Burton, Ross" <ross.burton@intel.com> wrote:
>> >
>> > How did you get poky?
>> >
>> > Ross
>> >
>> > On 31 July 2017 at 14:14, Riko Ho <antonius.riko@gmail.com> wrote:
>> >
>> > How can I see my branch?
>> >
>> > On Jul 31, 2017 9:12 PM, "Burton, Ross" <ross.burton@intel.com> wrote:
>> >
>> > On 31 July 2017 at 03:33, Riko Ho <antonius.riko@gmail.com> wrote:
>> >
>> > Is my auto make disabled with icecc ?
>> >
>> > How to make it enable ? thanks.
>> >
>> > That's just a debug message.
>> >
>> > | help2man: can't get `--help' info from automake-1.15
>> > | Try `--no-discard-stderr' if option outputs to stderr
>> > | Makefile:3687: recipe for target 'doc/automake-1.15.1' failed
>> >
>> > That's the error your hitting.
>> >
>> > I think you need to update to the latest commit for the branch you're
>> > on, there was a problem with modern perl in help2man.  What
>> release/branch
>> > are you using?
>> >
>> > Ross
>> >
>> >
>> > --
>> >
>> > /*******/
>> > Sent by Ubuntu LTS 16.04,
>> > Kind regards,
>> > Riko Ho
>> > /*******/
>> >
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>> >
>> > --
>> >
>> > /*******/
>> > Sent by Ubuntu LTS 16.04,
>> > Kind regards,
>> > Riko Ho
>> > /*******/
>> >
>> >
>> > --
>> >
>> > /*******/
>> > Sent by Ubuntu LTS 16.04,
>> > Kind regards,
>> > Riko Ho
>> > /*******/
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1142fd0ac3af16055921b9df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><span style=3D"font-family:sans-serif">Hi Riko</span><div=
 dir=3D"auto" style=3D"font-family:sans-serif"><br></div><div dir=3D"auto" =
style=3D"font-family:sans-serif">It seems you use,</div><div dir=3D"auto" s=
tyle=3D"font-family:sans-serif">poky: pyro</div><div dir=3D"auto" style=3D"=
font-family:sans-serif">meta-openembedded:master</div><div dir=3D"auto" sty=
le=3D"font-family:sans-serif"><br></div><div dir=3D"auto" style=3D"font-fam=
ily:sans-serif">I think that you should checkout meta-openembedded to pyro =
branch.</div><div dir=3D"auto" style=3D"font-family:sans-serif"><br></div><=
div dir=3D"auto" style=3D"font-family:sans-serif">You can get by command li=
ke a follows,</div><div dir=3D"auto" style=3D"font-family:sans-serif"><br><=
/div><div dir=3D"auto" style=3D"font-family:sans-serif">$ cd meta-openembed=
ded</div><div dir=3D"auto" style=3D"font-family:sans-serif">$ git checkout =
-b pyro origin/pyro</div><div dir=3D"auto" style=3D"font-family:sans-serif"=
><br></div><div dir=3D"auto" style=3D"font-family:sans-serif">Otherwise, ch=
eckout poky to master...</div><div dir=3D"auto" style=3D"font-family:sans-s=
erif"><br></div><div dir=3D"auto" style=3D"font-family:sans-serif">I hope y=
our helps.</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_qu=
ote">2017/08/03 0:05 &quot;Riko Ho&quot; &lt;<a href=3D"mailto:antonius.rik=
o@gmail.com">antonius.riko@gmail.com</a>&gt;:<br type=3D"attribution"><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><p dir=3D"ltr">Still got the same error after ins=
talling it? Any other clues?</p>
<div class=3D"gmail_quote">On Aug 2, 2017 9:53 PM, &quot;Khem Raj&quot; &lt=
;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com=
</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On T=
ue, Aug 1, 2017 at 11:42 PM, Riko Ho &lt;<a href=3D"mailto:antonius.riko@gm=
ail.com" target=3D"_blank">antonius.riko@gmail.com</a>&gt; wrote:<br>
&gt; Could it be this one ?<br>
&gt;<br>
&gt; <a href=3D"https://www.devmanuals.net/install/ubuntu/ubuntu-12-04-lts-=
precise-pangolin/install-libthread-queue-perl.html" rel=3D"noreferrer" targ=
et=3D"_blank">https://www.devmanuals.net/ins<wbr>tall/ubuntu/ubuntu-12-04-l=
ts-<wbr>precise-pangolin/install-libth<wbr>read-queue-perl.html</a><br>
&gt;<br>
<br>
yes<br>
<br>
&gt; Thanks<br>
&gt;<br>
&gt;<br>
&gt; On 02/08/17 14:38, Khem Raj wrote:<br>
&gt;<br>
&gt; apply the solutions they may work for ubuntu<br>
&gt;<br>
&gt; On Tue, Aug 1, 2017 at 11:33 PM, Riko Ho &lt;<a href=3D"mailto:antoniu=
s.riko@gmail.com" target=3D"_blank">antonius.riko@gmail.com</a>&gt; wrote:<=
br>
&gt;<br>
&gt; Dear Yocto Team Member,<br>
&gt;<br>
&gt; I&#39;m building with Ubuntu 16<br>
&gt;<br>
&gt;<br>
&gt; On 02/08/17 14:31, Khem Raj wrote:<br>
&gt;<br>
&gt; On Tue, Aug 1, 2017 at 11:18 PM, Riko Ho &lt;<a href=3D"mailto:antoniu=
s.riko@gmail.com" target=3D"_blank">antonius.riko@gmail.com</a>&gt; wrote:<=
br>
&gt;<br>
&gt; Dear Yocto Team Member,<br>
&gt;<br>
&gt; That&#39;s the branch :<br>
&gt;<br>
&gt; =3D=3D=3D=3D=3D=3D<br>
&gt;<br>
&gt; meta-poky<br>
&gt; meta-yocto-bsp=C2=A0 =C2=A0 =3D &quot;pyro:e5aa1ac23669a45491de9ecf<wb=
r>fac491c01e70203f&quot;<br>
&gt; openembedded-core =3D &quot;master:2fd0757ae7fd63bc93a4ce<wbr>8579c6ba=
0cdbb4c1cd&quot;<br>
&gt; meta-openembedded<br>
&gt; meta-oe<br>
&gt; meta-xfce<br>
&gt; meta-gnome<br>
&gt; meta-python<br>
&gt; meta-multimedia<br>
&gt; meta-networking=C2=A0 =C2=A0=3D &quot;master:b063789560bfb9c60a7a15<wb=
r>277b5b3a9839b5ba74&quot;<br>
&gt; meta-browser=C2=A0 =C2=A0 =C2=A0 =3D<br>
&gt; &quot;firefox-52.1.2esr-2:c79cf6c78<wbr>11afd2cd167e8967e3c29b1e797371=
<wbr>e&quot;<br>
&gt; meta-ti=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;master:872d4=
18f6e503dea66e353<wbr>3f43e7a17618183982&quot;<br>
&gt;<br>
&gt; Initialising tasks: 100%<br>
&gt; |#############################<wbr>##############################<wbr>=
##############################<wbr>##############################<wbr>#####=
####|<br>
&gt; Time: 0:00:08<br>
&gt; NOTE: Executing SetScene Tasks<br>
&gt; NOTE: Executing RunQueue Tasks<br>
&gt; ERROR: automake-native-1.15-r0 do_compile: oe_runmake failed<br>
&gt; ERROR: automake-native-1.15-r0 do_compile: Function failed: do_compile=
 (log<br>
&gt; file is located at<br>
&gt; /home/bianchi77/poky/build/tmp<wbr>/work/x86_64-linux/automake-<wbr>na=
tive/1.15-r0/temp/log.do_<wbr>compile.9291)<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/bianchi77/poky/build/tmp<wbr>/work/x86_64-linux/automake-<wbr>na=
tive/1.15-r0/temp/log.do_<wbr>compile.9291<br>
&gt; Log data follows:<br>
&gt; | DEBUG: Executing shell function do_compile<br>
&gt; | NOTE: Using icecc<br>
&gt; | NOTE: make -j 10<br>
&gt; | ERROR: oe_runmake failed<br>
&gt; | : &amp;&amp; /home/bianchi77/poky/build/tmp<wbr>/hosttools/mkdir -p =
doc &amp;&amp; {<br>
&gt; PATH=3D&#39;/home/bianchi77/poky/bui<wbr>ld/tmp/work/x86_64-linux/auto=
m<wbr>ake-native/1.15-r0/build/t/<wbr>wrap:&#39;$PATH<br>
&gt; &amp;&amp; export PATH; } &amp;&amp; /usr/bin/env perl ../automake-1.1=
5/doc/help2man<br>
&gt; --output=3Ddoc/automake-1.15.1 automake-1.15<br>
&gt; | help2man: can&#39;t get `--help&#39; info from automake-1.15<br>
&gt;<br>
&gt; What OS do you run on build machine ?<br>
&gt; if its archlinux then apply this patch to automake<br>
&gt;<br>
&gt; <a href=3D"https://gist.github.com/xywei/03b546054f0d2e2f76c5ac530c882=
68a" rel=3D"noreferrer" target=3D"_blank">https://gist.github.com/xywei/<wb=
r>03b546054f0d2e2f76c5ac530c8826<wbr>8a</a><br>
&gt;<br>
&gt; otherwise if its centos7 then install<br>
&gt;<br>
&gt; yum install perl-Thread-Queue<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; | Try `--no-discard-stderr&#39; if option outputs to stderr<br>
&gt; | Makefile:3687: recipe for target &#39;doc/automake-1.15.1&#39; faile=
d<br>
&gt; | make: *** [doc/automake-1.15.1] Error 255<br>
&gt; | ERROR: Function failed: do_compile (log file is located at<br>
&gt; /home/bianchi77/poky/build/tmp<wbr>/work/x86_64-linux/automake-<wbr>na=
tive/1.15-r0/temp/log.do_<wbr>compile.9291)<br>
&gt; ERROR: Task<br>
&gt; (virtual:native:/home/bianchi7<wbr>7/poky/meta/recipes-devtools/<wbr>a=
utomake/automake_1.15.bb:do_<wbr>compile)<br>
&gt; failed with exit code &#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 845 tasks of which 844 didn&#39;t need =
to be<br>
&gt; rerun and 1 failed.<br>
&gt;<br>
&gt; Summary: 1 task failed:<br>
&gt;<br>
&gt; virtual:native:/home/bianchi77<wbr>/poky/meta/recipes-devtools/<wbr>au=
tomake/automake_1.15.bb:do_<wbr>compile<br>
&gt; Summary: There were 4 WARNING messages shown.<br>
&gt; Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.<br>
&gt; bianchi77@bianchi77-HP-Pavilio<wbr>n-dv6-Notebook-PC:~/poky/<wbr>build=
$<br>
&gt;<br>
&gt; How can I fix that automake error ?<br>
&gt;<br>
&gt; I tried to run bitbake core-image-minimal for it.<br>
&gt; Thanks,<br>
&gt;<br>
&gt; On 31/07/17 21:26, Burton, Ross wrote:<br>
&gt;<br>
&gt; Then the branch you checked out.=C2=A0 git branch will tell you.<br>
&gt;<br>
&gt; Ross<br>
&gt;<br>
&gt; On 31 July 2017 at 14:17, Riko Ho &lt;<a href=3D"mailto:antonius.riko@=
gmail.com" target=3D"_blank">antonius.riko@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Git clone ...<br>
&gt;<br>
&gt; On Jul 31, 2017 9:16 PM, &quot;Burton, Ross&quot; &lt;<a href=3D"mailt=
o:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt; wr=
ote:<br>
&gt;<br>
&gt; How did you get poky?<br>
&gt;<br>
&gt; Ross<br>
&gt;<br>
&gt; On 31 July 2017 at 14:14, Riko Ho &lt;<a href=3D"mailto:antonius.riko@=
gmail.com" target=3D"_blank">antonius.riko@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; How can I see my branch?<br>
&gt;<br>
&gt; On Jul 31, 2017 9:12 PM, &quot;Burton, Ross&quot; &lt;<a href=3D"mailt=
o:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt; wr=
ote:<br>
&gt;<br>
&gt; On 31 July 2017 at 03:33, Riko Ho &lt;<a href=3D"mailto:antonius.riko@=
gmail.com" target=3D"_blank">antonius.riko@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Is my auto make disabled with icecc ?<br>
&gt;<br>
&gt; How to make it enable ? thanks.<br>
&gt;<br>
&gt; That&#39;s just a debug message.<br>
&gt;<br>
&gt; | help2man: can&#39;t get `--help&#39; info from automake-1.15<br>
&gt; | Try `--no-discard-stderr&#39; if option outputs to stderr<br>
&gt; | Makefile:3687: recipe for target &#39;doc/automake-1.15.1&#39; faile=
d<br>
&gt;<br>
&gt; That&#39;s the error your hitting.<br>
&gt;<br>
&gt; I think you need to update to the latest commit for the branch you&#39=
;re<br>
&gt; on, there was a problem with modern perl in help2man.=C2=A0 What relea=
se/branch<br>
&gt; are you using?<br>
&gt;<br>
&gt; Ross<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt; /*******/<br>
&gt; Sent by Ubuntu LTS 16.04,<br>
&gt; Kind regards,<br>
&gt; Riko Ho<br>
&gt; /*******/<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto=
</a><br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt; /*******/<br>
&gt; Sent by Ubuntu LTS 16.04,<br>
&gt; Kind regards,<br>
&gt; Riko Ho<br>
&gt; /*******/<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt; /*******/<br>
&gt; Sent by Ubuntu LTS 16.04,<br>
&gt; Kind regards,<br>
&gt; Riko Ho<br>
&gt; /*******/<br>
</blockquote></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div></div>

--001a1142fd0ac3af16055921b9df--
