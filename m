Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C53CE003E1; Thu, 19 Jan 2017 18:11:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43A11E003C1
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 18:11:13 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v0K2B3nC014193
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 19 Jan 2017 18:11:03 -0800 (PST)
Received: from [128.224.162.184] (128.224.162.184) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.294.0;
	Thu, 19 Jan 2017 18:11:02 -0800
To: <colin.helliwell@ln-systems.com>
References: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
	<CAJ86T=Xx0Dt_Y6x+5Ujz=5-edNzFusrFa_oyrEOcZjW9mkCrkA@mail.gmail.com>
	<CAPLgG=myHpDap+GOgoNm6-vJncFj2WmkjwsVt+WCyjvQWY4qzw@mail.gmail.com>
	<060101d27224$ad344a00$079cde00$@ln-systems.com>
	<53576169-6d7a-5db2-72c7-20e8d04ab5c5@windriver.com>
	<069b01d2723b$c14be860$43e3b920$@ln-systems.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <19c3b372-c26a-85b5-9dea-f3b4524437df@windriver.com>
Date: Fri, 20 Jan 2017 10:11:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <069b01d2723b$c14be860$43e3b920$@ln-systems.com>
X-Originating-IP: [128.224.162.184]
Cc: 'Yocto discussion list' <yocto@yoctoproject.org>
Subject: Re: Changing over to systemd (no dhcp)
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
X-List-Received-Date: Fri, 20 Jan 2017 02:11:16 -0000
Content-Type: multipart/alternative;
	boundary="------------279764E099E26919D63EC842"

--------------279764E099E26919D63EC842
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 01/19/2017 06:06 PM, colin.helliwell@ln-systems.com wrote:
>
> Thanks Chen.
>
> Currently looking into getting networkd hooked in. (no luck yet!)
>
> I’ll also look into moving stuff from local.conf to elsewhere, but 
> where you say “Distro conf files are not suitable for such kinds of 
> modification”, I’m wondering what sort of modifications they *are* 
> suitable/intended for? (i.e. the purpose of a distro as opposed to an 
> image recipe)
>

Hi Colin,

 From my understanding, 'image' is an item related to components in 
rootfs while 'distro' is an item related to the functionality of the 
components. So in Yocto, variables related to image, e.g. IMAGE_INSTALL, 
IMAGE_FEATURE, etc, control what should be in rootfs; and variables 
related to distro, e.g. DISTRO_FEATURES, control the behavior of the 
program, whether to support 'x11', whether to support 'pam', etc.

You can look at poky.conf in meta-poky for more info on the concept of 
distro. And you can look at IMAGE_FEATURES for more info on the concept 
of image.

Best Regards,
Chen Qi

> *From:*ChenQi [mailto:Qi.Chen@windriver.com]
> *Sent:* 19 January 2017 08:32
> *To:* colin.helliwell@ln-systems.com; 'Rick Altherr' 
> <raltherr@google.com>; 'Andre McCurdy' <armccurdy@gmail.com>
> *Cc:* 'Yocto discussion list' <yocto@yoctoproject.org>
> *Subject:* Re: [yocto] Changing over to systemd (no dhcp)
>
> Hi Colin,
>
> For the dhcp problem, what you need is a network manager. Any network 
> manager that supports dhcp would do the job. systemd-networkd might be 
> sufficient in your case.
>
> For the local.conf problem, you could use a layer to manage all common 
> things shared by the team.
>
> For the package adding problem, it depends on the purpose.
> 1) if adding the package is only for local work (dev or test), do it 
> in local.conf
> 2) otherwise, do it in image recipe
> Distro conf files are not suitable for such kinds of modification.
>
> Best Regards,
> Chen Qi
>
> On 01/19/2017 03:21 PM, colin.helliwell@ln-systems.com 
> <mailto:colin.helliwell@ln-systems.com> wrote:
>
>     Yes, I’d agree with that, Rick.
>
>     We run automated regression builds from a fresh version control
>     checkout – but because local.conf is generated when the build
>     environment is set up, it isn’t suitable for version control. So
>     any mods to it found during development have to be (remembered to
>     be) put into local.conf.sample, so that the same build is assured
>     for anyone anywhere.
>
>     I’ve long felt/assumed that local.conf was for truly local mods,
>     for that user and/or for their temporary try-outs.
>
>     Similarly – and this is going even more off-topic so I’ll save the
>     detail for a separate thread – I’ve still not yet got to grips
>     with whether, when I want to add a particular package, I should be
>     modifying my image recipe or set up a custom distro)
>
>     *From:*Rick Altherr [mailto:raltherr@google.com]
>     *Sent:* 19 January 2017 00:22
>     *To:* Andre McCurdy <armccurdy@gmail.com> <mailto:armccurdy@gmail.com>
>     *Cc:* colin.helliwell@ln-systems.com
>     <mailto:colin.helliwell@ln-systems.com>; Yocto discussion list
>     <yocto@yoctoproject.org> <mailto:yocto@yoctoproject.org>
>     *Subject:* Re: [yocto] Changing over to systemd (no dhcp)
>
>     I was wondering about this recently. Why are these snippets put in
>     local.conf.sample.extended instead of separate, well-named .inc
>     files that can be shared by multiple distros?  The current model
>     seems to encourage putting lots of configuration in local.conf
>     that probably should be in the distro or machine conf.
>
>     Rick
>
>     On Wed, Jan 18, 2017 at 1:35 PM, Andre McCurdy
>     <armccurdy@gmail.com <mailto:armccurdy@gmail.com>> wrote:
>
>         On Wed, Jan 18, 2017 at 7:10 AM,
>         <colin.helliwell@ln-systems.com
>         <mailto:colin.helliwell@ln-systems.com>> wrote:
>
>         > We have a configuration for our embedded system which is
>         working via SysV,
>         > but we’re investigating moving over to systemd.
>         >
>         > Not sure if this is ‘wise’ – if anyone has technological
>         arguments
>         > for/against then I’d be interested – but I wanted to
>         investigate it anyway.
>         >
>         > I’ve modified local.conf (right or wrong) with
>         >
>         >   DISTRO_FEATURES_append = " systemd"
>         >   VIRTUAL-RUNTIME_init_manager = "systemd"
>         >   DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
>         >   VIRTUAL-RUNTIME_initscripts = ""
>         >   KERNEL_ENABLE_CGROUPS = "1"
>         >
>         > I also found a readme
>         >
>         (https://cgit.freedesktop.org/systemd/systemd/tree/README#n37)
>         about the
>         > kernel requirements for systemd, and it does at least now boot.
>         >
>         > However although eth0 is coming up (‘ifconfig eth0’), there
>         doesn’t seem to
>         > be any dhcp happening – no IP etc.
>         >
>         > Previously (under SysV) I had the busybox dhcp client; now
>         it seems that is
>         > missing. There’s a symlink
>         /etc/systemd/system/busybox-udhcpc.service to
>         > /dev/null
>         >
>         > I’m using
>         >
>         >   Poky Jethro
>         >   Kernel 4.4.0
>         >   Busybox 1.23.2 (with ‘CONFIG_FEATURE_SYSTEMD=y’)
>         >
>         > I wondered if this is just a simple switch I’m missing
>         somewhere, or is
>         > there a whole load more modifications I need to dig into and
>         hand-craft?
>         > (Was hoping for something ‘out of the box’….)
>
>         Try:
>
>           VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"
>
>         Enabling systemd is somewhat documented by the example in
>         {meta-poky,openembedded-core/meta}/conf/local.conf.sample.extended,
>         which is:
>
>         #
>         # Use systemd for system initialization
>         #
>         # DISTRO_FEATURES_append = " systemd"
>         # DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
>         # VIRTUAL-RUNTIME_init_manager = "systemd"
>         # VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"
>
>         --
>         _______________________________________________
>         yocto mailing list
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>         https://lists.yoctoproject.org/listinfo/yocto
>
>
>


--------------279764E099E26919D63EC842
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 01/19/2017 06:06 PM,
      <a class="moz-txt-link-abbreviated" href="mailto:colin.helliwell@ln-systems.com">colin.helliwell@ln-systems.com</a> wrote:<br>
    </div>
    <blockquote
      cite="mid:069b01d2723b$c14be860$43e3b920$@ln-systems.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
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
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle20
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
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">Thanks
            Chen.<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">Currently
            looking into getting networkd hooked in. (no luck yet!)<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">I’ll
            also look into moving stuff from local.conf to elsewhere,
            but where you say “Distro conf files are not suitable for
            such kinds of modification”, I’m wondering what sort of
            modifications they *are* suitable/intended for? (i.e. the
            purpose of a distro as opposed to an image recipe)<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US"><o:p> </o:p></span></p>
      </div>
    </blockquote>
    <br>
    Hi Colin,<br>
    <br>
    From my understanding, 'image' is an item related to components in
    rootfs while 'distro' is an item related to the functionality of the
    components. So in Yocto, variables related to image, e.g.
    IMAGE_INSTALL, IMAGE_FEATURE, etc, control what should be in rootfs;
    and variables related to distro, e.g. DISTRO_FEATURES, control the
    behavior of the program, whether to support 'x11', whether to
    support 'pam', etc.<br>
    <br>
    You can look at poky.conf in meta-poky for more info on the concept
    of distro. And you can look at IMAGE_FEATURES for more info on the
    concept of image.<br>
    <br>
    Best Regards,<br>
    Chen Qi<br>
    <br>
    <blockquote
      cite="mid:069b01d2723b$c14be860$43e3b920$@ln-systems.com"
      type="cite">
      <div class="WordSection1">
        <div>
          <div style="border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0cm 0cm 0cm">
            <p class="MsoNormal"><b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:windowtext"
                  lang="EN-US">From:</span></b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:windowtext"
                lang="EN-US"> ChenQi [<a class="moz-txt-link-freetext" href="mailto:Qi.Chen@windriver.com">mailto:Qi.Chen@windriver.com</a>] <br>
                <b>Sent:</b> 19 January 2017 08:32<br>
                <b>To:</b> <a class="moz-txt-link-abbreviated" href="mailto:colin.helliwell@ln-systems.com">colin.helliwell@ln-systems.com</a>; 'Rick
                Altherr' <a class="moz-txt-link-rfc2396E" href="mailto:raltherr@google.com">&lt;raltherr@google.com&gt;</a>; 'Andre McCurdy'
                <a class="moz-txt-link-rfc2396E" href="mailto:armccurdy@gmail.com">&lt;armccurdy@gmail.com&gt;</a><br>
                <b>Cc:</b> 'Yocto discussion list'
                <a class="moz-txt-link-rfc2396E" href="mailto:yocto@yoctoproject.org">&lt;yocto@yoctoproject.org&gt;</a><br>
                <b>Subject:</b> Re: [yocto] Changing over to systemd (no
                dhcp)<o:p></o:p></span></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p> </o:p></p>
        <div>
          <p class="MsoNormal">Hi Colin,<br>
            <br>
            For the dhcp problem, what you need is a network manager.
            Any network manager that supports dhcp would do the job.
            systemd-networkd might be sufficient in your case.<br>
            <br>
            For the local.conf problem, you could use a layer to manage
            all common things shared by the team.<br>
            <br>
            For the package adding problem, it depends on the purpose.<br>
            1) if adding the package is only for local work (dev or
            test), do it in local.conf<br>
            2) otherwise, do it in image recipe<br>
            Distro conf files are not suitable for such kinds of
            modification.<br>
            <br>
            Best Regards,<br>
            Chen Qi<br>
            <br>
            On 01/19/2017 03:21 PM, <a moz-do-not-send="true"
              href="mailto:colin.helliwell@ln-systems.com">colin.helliwell@ln-systems.com</a>
            wrote:<o:p></o:p></p>
        </div>
        <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
          <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">Yes,
              I’d agree with that, Rick.</span><o:p></o:p></p>
          <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">We
              run automated regression builds from a fresh version
              control checkout – but because local.conf is generated
              when the build environment is set up, it isn’t suitable
              for version control. So any mods to it found during
              development have to be (remembered to be) put into
              local.conf.sample, so that the same build is assured for
              anyone anywhere.</span><o:p></o:p></p>
          <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">I’ve
              long felt/assumed that local.conf was for truly local
              mods, for that user and/or for their temporary try-outs.</span><o:p></o:p></p>
          <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">Similarly
              – and this is going even more off-topic so I’ll save the
              detail for a separate thread – I’ve still not yet got to
              grips with whether, when I want to add a particular
              package, I should be modifying my image recipe or set up a
              custom distro)</span><o:p></o:p></p>
          <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US"> </span><o:p></o:p></p>
          <p class="MsoNormal"><b><span
                style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"
                lang="EN-US">From:</span></b><span
              style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"
              lang="EN-US"> Rick Altherr [<a moz-do-not-send="true"
                href="mailto:raltherr@google.com">mailto:raltherr@google.com</a>]
              <br>
              <b>Sent:</b> 19 January 2017 00:22<br>
              <b>To:</b> Andre McCurdy <a moz-do-not-send="true"
                href="mailto:armccurdy@gmail.com">&lt;armccurdy@gmail.com&gt;</a><br>
              <b>Cc:</b> <a moz-do-not-send="true"
                href="mailto:colin.helliwell@ln-systems.com">colin.helliwell@ln-systems.com</a>;
              Yocto discussion list <a moz-do-not-send="true"
                href="mailto:yocto@yoctoproject.org">&lt;yocto@yoctoproject.org&gt;</a><br>
              <b>Subject:</b> Re: [yocto] Changing over to systemd (no
              dhcp)</span><o:p></o:p></p>
          <p class="MsoNormal"> <o:p></o:p></p>
          <div>
            <p class="MsoNormal">I was wondering about this recently. 
              Why are these snippets put in local.conf.sample.extended
              instead of separate, well-named .inc files that can be
              shared by multiple distros?  The current model seems to
              encourage putting lots of configuration in local.conf that
              probably should be in the distro or machine conf.<o:p></o:p></p>
            <div>
              <p class="MsoNormal"> <o:p></o:p></p>
            </div>
            <div>
              <p class="MsoNormal">Rick<o:p></o:p></p>
            </div>
          </div>
          <div>
            <p class="MsoNormal"> <o:p></o:p></p>
            <div>
              <p class="MsoNormal">On Wed, Jan 18, 2017 at 1:35 PM,
                Andre McCurdy &lt;<a moz-do-not-send="true"
                  href="mailto:armccurdy@gmail.com" target="_blank">armccurdy@gmail.com</a>&gt;
                wrote:<o:p></o:p></p>
              <blockquote style="border:none;border-left:solid #CCCCCC
                1.0pt;padding:0cm 0cm 0cm
6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0cm;margin-bottom:5.0pt">
                <p class="MsoNormal">On Wed, Jan 18, 2017 at 7:10 AM, 
                  &lt;<a moz-do-not-send="true"
                    href="mailto:colin.helliwell@ln-systems.com">colin.helliwell@ln-systems.com</a>&gt;
                  wrote:<o:p></o:p></p>
                <div>
                  <div>
                    <p class="MsoNormal" style="margin-bottom:12.0pt">&gt;
                      We have a configuration for our embedded system
                      which is working via SysV,<br>
                      &gt; but we’re investigating moving over to
                      systemd.<br>
                      &gt;<br>
                      &gt; Not sure if this is ‘wise’ – if anyone has
                      technological arguments<br>
                      &gt; for/against then I’d be interested – but I
                      wanted to investigate it anyway.<br>
                      &gt;<br>
                      &gt; I’ve modified local.conf (right or wrong)
                      with<br>
                      &gt;<br>
                      &gt;   DISTRO_FEATURES_append = " systemd"<br>
                      &gt;   VIRTUAL-RUNTIME_init_manager = "systemd"<br>
                      &gt;   DISTRO_FEATURES_BACKFILL_CONSIDERED =
                      "sysvinit"<br>
                      &gt;   VIRTUAL-RUNTIME_initscripts = ""<br>
                      &gt;   KERNEL_ENABLE_CGROUPS = "1"<br>
                      &gt;<br>
                      &gt; I also found a readme<br>
                      &gt; (<a moz-do-not-send="true"
                        href="https://cgit.freedesktop.org/systemd/systemd/tree/README#n37"
                        target="_blank">https://cgit.freedesktop.org/systemd/systemd/tree/README#n37</a>)
                      about the<br>
                      &gt; kernel requirements for systemd, and it does
                      at least now boot.<br>
                      &gt;<br>
                      &gt; However although eth0 is coming up (‘ifconfig
                      eth0’), there doesn’t seem to<br>
                      &gt; be any dhcp happening – no IP etc.<br>
                      &gt;<br>
                      &gt; Previously (under SysV) I had the busybox
                      dhcp client; now it seems that is<br>
                      &gt; missing. There’s a symlink
                      /etc/systemd/system/busybox-udhcpc.service to<br>
                      &gt; /dev/null<br>
                      &gt;<br>
                      &gt; I’m using<br>
                      &gt;<br>
                      &gt;   Poky Jethro<br>
                      &gt;   Kernel 4.4.0<br>
                      &gt;   Busybox 1.23.2 (with
                      ‘CONFIG_FEATURE_SYSTEMD=y’)<br>
                      &gt;<br>
                      &gt; I wondered if this is just a simple switch
                      I’m missing somewhere, or is<br>
                      &gt; there a whole load more modifications I need
                      to dig into and hand-craft?<br>
                      &gt; (Was hoping for something ‘out of the box’….)<o:p></o:p></p>
                  </div>
                </div>
                <p class="MsoNormal">Try:<br>
                  <br>
                    VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"<br>
                  <br>
                  Enabling systemd is somewhat documented by the example
                  in<br>
{meta-poky,openembedded-core/meta}/conf/local.conf.sample.extended,<br>
                  which is:<br>
                  <br>
                  #<br>
                  # Use systemd for system initialization<br>
                  #<br>
                  # DISTRO_FEATURES_append = " systemd"<br>
                  # DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"<br>
                  # VIRTUAL-RUNTIME_init_manager = "systemd"<br>
                  # VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"<o:p></o:p></p>
                <div>
                  <div>
                    <p class="MsoNormal">--<br>
                      _______________________________________________<br>
                      yocto mailing list<br>
                      <a moz-do-not-send="true"
                        href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                      <a moz-do-not-send="true"
                        href="https://lists.yoctoproject.org/listinfo/yocto"
                        target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><o:p></o:p></p>
                  </div>
                </div>
              </blockquote>
            </div>
            <p class="MsoNormal"> <o:p></o:p></p>
          </div>
          <p class="MsoNormal"><br>
            <br>
            <o:p></o:p></p>
        </blockquote>
        <p><o:p> </o:p></p>
      </div>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------279764E099E26919D63EC842--
