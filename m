Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C05CE0083A; Tue,  3 Feb 2015 18:47:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00, HTML_FONT_FACE_BAD, 
	HTML_MESSAGE,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 HTML_FONT_FACE_BAD BODY: HTML font face is not a word
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED567E0076F
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 18:47:49 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t142ldS2013039
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 3 Feb 2015 18:47:39 -0800 (PST)
Received: from [128.224.162.226] (128.224.162.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Tue, 3 Feb 2015 18:47:38 -0800
Message-ID: <54D18849.7020003@windriver.com>
Date: Wed, 4 Feb 2015 10:47:37 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: <Erwin.Rieger.ext@rohde-schwarz.com>, <yocto@yoctoproject.org>
References: <54D028EC.3010001@windriver.com>,
	<OFE9FE701D.62B0AD26-ONC1257DE0.004958B3-C1257DE0.004958B5@rohde-schwarz.com>
	<OFD2FD4259.5EFAEEC5-ONC1257DE1.00338C9C-C1257DE1.00338CA2@rohde-schwarz.com>
In-Reply-To: <OFD2FD4259.5EFAEEC5-ONC1257DE1.00338C9C-C1257DE1.00338CA2@rohde-schwarz.com>
X-Originating-IP: [128.224.162.226]
Subject: Re: How to use different busybox defconfig's in the initramfs and rootfs image
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
X-List-Received-Date: Wed, 04 Feb 2015 02:47:54 -0000
Content-Type: multipart/alternative;
	boundary="------------080305060604010200050105"

--------------080305060604010200050105
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 02/03/2015 05:23 PM, Erwin.Rieger.ext@rohde-schwarz.com wrote:
>
> Hello,
>
> thank you for your reply.
>
> I have a working solution now, but it is not as clean as i would like 
> it to be and some new questions arose with it.
>
> My current setup consists of a busybox.bbappend file that is used to 
> customize the rootfs
> busybox (defconfig, some /etc files and so on) and a 
> busybox-initramfs.bb recipe for the initramfs busybox (as you
> suggested).
>
> The busybox.bbappend (see below) is straight forward, so no problem 
> with that.
>
> To create the busybox-initramfs.bb in my custom layer, i have included 
> the base busybox recipe from the meta layer with
> an 'require' statement.
>
> Then i had to extend the FILESEXTRAPATHS variable to point back to the 
> base recipe files-directory since it
> no longer found the SRC_URI files from meta/busybox.bb and 
> meta/busybox.inc. See the BUSYBOXBASEDIR
> variable in the busybox-initramfs.bb below.
>
> I feel that his construct is not that elegant, so here comes the 
> f*irst question*:
>
> Is there a nicer/cleaner way to include/reference the source files 
> from the base busybox recipe in the meta layer?
>

How about using "${COREBASE}/meta/recipes-core/busybox"? I didn't try it 
out, so I'm not sure whether it works.

> The *second question* concerns the versioning: The busybox.bbappend 
> file uses a 'version wildcard' (_%) to
> match all versions of the base busybox recipe. But in 
> the busybox-initramfs.bb recipe i have to hardwire the
> version of the base recipe.
>
How about change the recipe name to busybox-initramfs_1.22.1.bb? So that 
the PV value is automatically extracted from the recipe name and there's 
no need to set it in the recipe.

> How can i use a 'version wildcard' in a 'require' statement?
>

It's not supported, as far as I know.

Best Regards,
Chen Qi

> I've tried 'require recipes-core/busybox/busybox_%.bb' but that gives 
> me a parse error so it seems not to be
> possible to use version wildcards together with require/include.
>
>
> My current busybox-initramfs.bb recipe:
>
>     -------------------------------------------------------------------
>     DESCRIPTION = "Use different busybox defconfig for initramfs."
>
>     # require recipes-core/busybox/busybox_1.22.1.bb
>
>     PV = "1.22.1"
>     require recipes-core/busybox/busybox_${PV}.bb
>
>     S = "${WORKDIR}/busybox-${PV}"
>
>     # Point FILESPATH to base busybox files dir
>     BUSYBOXBASEDIR = "${THISDIR}/../../../meta/recipes-core/busybox"
>     FILESEXTRAPATHS_prepend := "${BUSYBOXBASEDIR}/busybox:"
>     FILESEXTRAPATHS_prepend := "${BUSYBOXBASEDIR}/files:"
>
>     # Include our initramfs busybox defconfig
>     FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"
>
>     BUSYBOX_SPLIT_SUID = "0"
>     -------------------------------------------------------------------
>
>
>
> The busybox_%.bbappend for the rootfs busybox:
>
>     -------------------------------------------------------------------
>     DESCRIPTION = "Customize busybox."
>
>     # Include our rootfs busybox defconfig
>     FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"
>
>     SRC_URI += " \
>         file://inetd.conf \
>         "
>
>     do_install_append() {
>         install ${WORKDIR}/inetd.conf ${D}${sysconfdir}
>     }
>
>     BUSYBOX_SPLIT_SUID = "0"
>     -------------------------------------------------------------------
>
>
> Best Regards, Erwin Rieger
>
>
>
> -----ChenQi <Qi.Chen@windriver.com> schrieb: -----
> An: <Erwin.Rieger.ext@rohde-schwarz.com>, <yocto@yoctoproject.org>
> Von: ChenQi <Qi.Chen@windriver.com>
> Datum: 03.02.2015 02:48
> Betreff: Re: [yocto] How to use different busybox defconfig's in the 
> initramfs and rootfs image
>
> The only way I know is to make a new recipe, busybox-initramfs.bb, for 
> example.
> Install busybox for image rootfs and busybox-initramfs for initramfs.
>
> Best Regards,
> Chen Qi
>
> On 02/02/2015 09:21 PM, Erwin.Rieger.ext@rohde-schwarz.com wrote:
>> Hello list,
>>
>> i have used Yocto to create a initramfs linux kernel and a 
>> corresponding rootfs for a embedded linux system.
>>
>> Things are working as expected, so far.
>>
>> Now i want to fine-tune my setup and want to use a different busybox 
>> configuration in the initramfs as the one in the rootfs image.
>> For example, the initramfs busybox should contain support for 
>> switch-root and that is not needed in the rootfs.
>> On the other hand, the rootfs should contain a "full-fledged" busybox 
>> (with inetd enabled, for example).
>>
>> So the question is: How can i build/install a package two times with 
>> differing configurations in one bitbake run?.
>>
>> How can this be done the Yocto-way without copying busybox.bb and 
>> hacking it the way i need it?
>>
>> I've tried various combinations, e.g. bb-appending busybox, 
>> inheriting from busybox and so on - but to no avail.
>>
>> Maybe someone have an idea on how to do that?
>>
>>
>> PS:
>> * The kernel recipe is derived (bbappend) 
>> from core-image-minimal-initramfs.
>> * Rootfs recipe is derived from core-image-minimal.bb.
>>
>>
>> -- 
>> Erwin Rieger
>> -- 
>>
>>
>
>
>


--------------080305060604010200050105
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/03/2015 05:23 PM,
      <a class="moz-txt-link-abbreviated" href="mailto:Erwin.Rieger.ext@rohde-schwarz.com">Erwin.Rieger.ext@rohde-schwarz.com</a> wrote:<br>
    </div>
    <blockquote
cite="mid:OFD2FD4259.5EFAEEC5-ONC1257DE1.00338C9C-C1257DE1.00338CA2@rohde-schwarz.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <font face="Default Sans Serif,Verdana,Arial,Helvetica,sans-serif"
        size="2"><br>
        <font face="Verdana, Arial, Helvetica, sans-serif">Hello,</font>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><br>
        </div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">thank
          you for your reply.</div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><br>
        </div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">I
          have a working solution now, but it is not as clean as i would
          like it to be and some new questions arose with it.</div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><br>
        </div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">My
          current setup consists of a busybox.bbappend file that is used
          to customize the rootfs</div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">busybox
          (defconfig, some /etc files and so on) and a
          busybox-initramfs.bb recipe for the initramfs busybox (as you</div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">suggested).</div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><br>
        </div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">The busybox.bbappend
          (see below) is straight forward, so no problem with that.</div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><br>
        </div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">To
          create the busybox-initramfs.bb in my custom layer, i have
          included the base busybox recipe from the meta layer with</div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">an
          'require' statement.</div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><br>
        </div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">Then
          i had to extend the FILESEXTRAPATHS variable to point back to
          the base recipe files-directory since it</div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">no
          longer found the SRC_URI files from meta/busybox.bb and
          meta/busybox.inc. See the BUSYBOXBASEDIR</div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">variable
          in the busybox-initramfs.bb below.</div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><br>
        </div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">I
          feel that his construct is not that elegant, so here comes the
          f<b style="font-size: 12.7272720336914px;">irst question</b><span
            style="font-size: 12.7272720336914px;">:</span></div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><span
            style="font-size: 12.7272720336914px;"><br>
          </span></div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><span
            style="font-size: 12.7272720336914px;">Is there a
            nicer/cleaner way to include/reference the source files from
            the base busybox recipe in the </span><span
            style="font-size: 12.7272720336914px;">meta layer?</span></div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><br>
        </div>
      </font></blockquote>
    <font face="Default Sans Serif,Verdana,Arial,Helvetica,sans-serif"
      size="2"><font face="monospace, Courier New, Courier, monospace"
        size="2"><br>
        How about using "${COREBASE}/meta/recipes-core/busybox</font></font>"?
    I didn't try it out, so I'm not sure whether it works.<br>
    <br>
    <blockquote
cite="mid:OFD2FD4259.5EFAEEC5-ONC1257DE1.00338C9C-C1257DE1.00338CA2@rohde-schwarz.com"
      type="cite"><font face="Default Sans
        Serif,Verdana,Arial,Helvetica,sans-serif" size="2">
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">The
          <b>second question</b> concerns the versioning: The
          busybox.bbappend file uses a 'version wildcard' (_%) to</div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">match
          all versions of the base busybox recipe. But in
          the busybox-initramfs.bb recipe i have to hardwire the </div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">version
          of the base recipe.</div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><br>
        </div>
      </font></blockquote>
    How about change the recipe name to busybox-initramfs_1.22.1.bb? So
    that the PV value is automatically extracted from the recipe name
    and there's no need to set it in the recipe.<br>
    <br>
    <blockquote
cite="mid:OFD2FD4259.5EFAEEC5-ONC1257DE1.00338C9C-C1257DE1.00338CA2@rohde-schwarz.com"
      type="cite"><font face="Default Sans
        Serif,Verdana,Arial,Helvetica,sans-serif" size="2">
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">How
          can i use a 'version wildcard' in a 'require' statement?</div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><br>
        </div>
      </font></blockquote>
    <br>
    It's not supported, as far as I know.<br>
    <br>
    Best Regards,<br>
    Chen Qi<br>
    <br>
    <blockquote
cite="mid:OFD2FD4259.5EFAEEC5-ONC1257DE1.00338C9C-C1257DE1.00338CA2@rohde-schwarz.com"
      type="cite"><font face="Default Sans
        Serif,Verdana,Arial,Helvetica,sans-serif" size="2">
        <div><font face="Verdana, Arial, Helvetica, sans-serif">I've
            tried '</font><font face="monospace, Courier New, Courier,
            monospace" size="2">require
            recipes-core/busybox/busybox_%.bb</font><font
            style="font-size: 12.7272720336914px;" face="Verdana, Arial,
            Helvetica, sans-serif">' but that gives me a parse error so
            it seems not to be</font></div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><span
            style="font-size: 12.7272720336914px;">possible to use
            version wildcards together with require/include.</span></div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><br>
        </div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><br>
        </div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">My
          current busybox-initramfs.bb recipe:</div>
        <blockquote style="margin: 0 0 0 40px; border: none; padding:
          0px;">
          <div>
            <div><span style="font-family: monospace, 'Courier New',
                Courier, monospace; font-size: small;">-------------------------------------------------------------------</span></div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2">DESCRIPTION = "Use different busybox defconfig
                for initramfs."</font></div>
          </div>
          <div>
            <div><br>
            </div>
          </div>
          <div>
            <div><span style="font-family: monospace, 'Courier New',
                Courier, monospace; font-size: small;"># require
                recipes-core/busybox/busybox_1.22.1.bb</span></div>
          </div>
          <div><span style="font-family: monospace, 'Courier New',
              Courier, monospace; font-size: small;"><br>
            </span></div>
          <div><span style="font-family: monospace, 'Courier New',
              Courier, monospace; font-size: small;">PV = "1.22.1"</span></div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2">require recipes-core/busybox/busybox_${PV}.bb</font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2"><br>
              </font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2">S = "${WORKDIR}/busybox-${PV}"</font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2"><br>
              </font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2"># Point FILESPATH to base busybox files dir</font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2">BUSYBOXBASEDIR =
                "${THISDIR}/../../../meta/recipes-core/busybox"</font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2">FILESEXTRAPATHS_prepend :=
                "${BUSYBOXBASEDIR}/busybox:"</font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2">FILESEXTRAPATHS_prepend :=
                "${BUSYBOXBASEDIR}/files:"</font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2"><br>
              </font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2"># Include our initramfs busybox defconfig</font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2">FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"</font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2"><br>
              </font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2">BUSYBOX_SPLIT_SUID = "0"</font></div>
          </div>
          <div><span style="font-family: monospace, 'Courier New',
              Courier, monospace; font-size: small;">-------------------------------------------------------------------</span></div>
        </blockquote>
        <div>
          <div><font face="monospace, Courier New, Courier, monospace"
              size="2"><br>
            </font></div>
          <div><br>
          </div>
          <div style="font-family: Verdana, Arial, Helvetica,
            sans-serif;"><span style="font-size: 12.7272720336914px;">The
              busybox_%.bbappend for the rootfs busybox:</span></div>
        </div>
        <blockquote style="margin: 0 0 0 40px; border: none; padding:
          0px;">
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2">-------------------------------------------------------------------</font></div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2">DESCRIPTION = "Customize busybox."</font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2"><br>
              </font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2"># Include our rootfs busybox defconfig </font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2">FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"</font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2"><br>
              </font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2">SRC_URI += " \</font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2">    <a class="moz-txt-link-freetext" href="file://inetd.conf">file://inetd.conf</a> \</font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2">    "</font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2"><br>
              </font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2">do_install_append() {</font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2">    install ${WORKDIR}/inetd.conf
                ${D}${sysconfdir}</font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2">}</font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2"><br>
              </font></div>
          </div>
          <div>
            <div><font face="monospace, Courier New, Courier, monospace"
                size="2">BUSYBOX_SPLIT_SUID = "0"</font></div>
          </div>
          <div><span style="font-family: monospace, 'Courier New',
              Courier, monospace; font-size: small;">-------------------------------------------------------------------</span></div>
        </blockquote>
        <div>
          <div style="font-family: Verdana, Arial, Helvetica,
            sans-serif; font-size: 12.7272720336914px;"><br>
          </div>
        </div>
        <div><font face="Verdana, Arial, Helvetica, sans-serif">Best
            Regards, Erwin Rieger</font></div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><span
            style="font-size: 12.7272720336914px;"><br>
          </span></div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><span
            style="font-size: 12.7272720336914px;"><br>
          </span></div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><br>
          <font color="#990099">-----ChenQi
            <a class="moz-txt-link-rfc2396E" href="mailto:Qi.Chen@windriver.com">&lt;Qi.Chen@windriver.com&gt;</a> schrieb: -----</font>
          <div style="padding-left:5px;">
            <div
              style="padding-right:0px;padding-left:5px;border-left:solid
              black 2px;">An:
              <a class="moz-txt-link-rfc2396E" href="mailto:Erwin.Rieger.ext@rohde-schwarz.com">&lt;Erwin.Rieger.ext@rohde-schwarz.com&gt;</a>,
              <a class="moz-txt-link-rfc2396E" href="mailto:yocto@yoctoproject.org">&lt;yocto@yoctoproject.org&gt;</a><br>
              Von: ChenQi <a class="moz-txt-link-rfc2396E" href="mailto:Qi.Chen@windriver.com">&lt;Qi.Chen@windriver.com&gt;</a><br>
              Datum: 03.02.2015 02:48<br>
              Betreff: Re: [yocto] How to use different busybox
              defconfig's in the initramfs and rootfs image<br>
              <br>
              <!--Notes ACF
<meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">-->
              <div class="moz-cite-prefix">The only way I know is to
                make a new recipe, busybox-initramfs.bb, for example.<br>
                Install busybox for image rootfs and busybox-initramfs
                for initramfs.<br>
                <br>
                Best Regards,<br>
                Chen Qi<br>
                <br>
                On 02/02/2015 09:21 PM, <a moz-do-not-send="true"
                  class="moz-txt-link-abbreviated"
                  href="mailto:Erwin.Rieger.ext@rohde-schwarz.com">Erwin.Rieger.ext@rohde-schwarz.com</a>
                wrote:<br>
              </div>
              <blockquote
cite="mid:OFE9FE701D.62B0AD26-ONC1257DE0.004958B3-C1257DE0.004958B5@rohde-schwarz.com"
                type="cite">
                <!--Notes ACF
<meta http-equiv="Content-Type" content="text/html;        charset=windows-1252">-->
                <font face="Default Sans
                  Serif,Verdana,Arial,Helvetica,sans-serif" size="2"><font
                    face="Verdana, Arial, Helvetica, sans-serif">Hello
                    list,</font>
                  <div style="font-family: Verdana, Arial, Helvetica,
                    sans-serif;"><br>
                  </div>
                  <div style="font-family: Verdana, Arial, Helvetica,
                    sans-serif;">i have used Yocto to create a initramfs
                    linux kernel and a corresponding rootfs for a
                    embedded linux system.</div>
                  <div style="font-family: Verdana, Arial, Helvetica,
                    sans-serif;"><br>
                  </div>
                  <div style="font-family: Verdana, Arial, Helvetica,
                    sans-serif;">Things are working as expected, so far.</div>
                  <div style="font-family: Verdana, Arial, Helvetica,
                    sans-serif;"><br>
                  </div>
                  <div style="font-family: Verdana, Arial, Helvetica,
                    sans-serif;">Now i want to fine-tune my setup and
                    want to use a different busybox configuration in the
                    initramfs as the one in the rootfs image.</div>
                  <div style="font-family: Verdana, Arial, Helvetica,
                    sans-serif;">For example, the initramfs busybox
                    should contain support for switch-root and that is
                    not needed in the rootfs.</div>
                  <div style="font-family: Verdana, Arial, Helvetica,
                    sans-serif;">On the other hand, the rootfs should
                    contain a "full-fledged" busybox (with inetd
                    enabled, for example).</div>
                  <div style="font-family: Verdana, Arial, Helvetica,
                    sans-serif;"><br>
                  </div>
                  <div style="font-family: Verdana, Arial, Helvetica,
                    sans-serif;">So the question is: How can i
                    build/install a package two times with differing
                    configurations in one bitbake run?.</div>
                  <div style="font-family: Verdana, Arial, Helvetica,
                    sans-serif;"><br>
                  </div>
                  <div style="font-family: Verdana, Arial, Helvetica,
                    sans-serif;">How can this be done the Yocto-way
                    without copying busybox.bb and hacking it the way i
                    need it?</div>
                  <div style="font-family: Verdana, Arial, Helvetica,
                    sans-serif;"><br>
                  </div>
                  <div style="font-family: Verdana, Arial, Helvetica,
                    sans-serif;">I've tried various combinations, e.g.
                    bb-appending busybox, inheriting from busybox and so
                    on - but to no avail.</div>
                  <div style="font-family: Verdana, Arial, Helvetica,
                    sans-serif;"><br>
                  </div>
                  <div><font face="Verdana, Arial, Helvetica,
                      sans-serif">Maybe someone have an idea on how to
                      do that?</font></div>
                  <div><font face="Verdana, Arial, Helvetica,
                      sans-serif"><br>
                    </font></div>
                  <div><font face="Verdana, Arial, Helvetica,
                      sans-serif"><br>
                    </font></div>
                  <div><font face="Verdana, Arial, Helvetica,
                      sans-serif">PS:</font></div>
                  <div><font face="Verdana, Arial, Helvetica,
                      sans-serif">* The kernel recipe is derived
                      (bbappend) from core-image-minimal-initramfs.</font></div>
                  <div><font face="Verdana, Arial, Helvetica,
                      sans-serif">* Rootfs recipe is derived
                      from core-image-minimal.bb.</font></div>
                  <div><font face="Verdana, Arial, Helvetica,
                      sans-serif"><br>
                    </font></div>
                  <div><font face="Verdana, Arial, Helvetica,
                      sans-serif"><br>
                    </font></div>
                  <div><font face="Verdana, Arial, Helvetica,
                      sans-serif">
                      <div>-- </div>
                      <div>Erwin Rieger</div>
                      <div>-- </div>
                    </font></div>
                </font> <br>
                <fieldset class="mimeAttachmentHeader"></fieldset>
                <br>
              </blockquote>
              <br>
            </div>
          </div>
        </div>
      </font>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------080305060604010200050105--
