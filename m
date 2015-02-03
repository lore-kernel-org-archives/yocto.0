Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A711CE008BC; Mon,  2 Feb 2015 17:48:39 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49DA0E0086F
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 17:48:32 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t131mPrb016857
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 2 Feb 2015 17:48:25 -0800 (PST)
Received: from [128.224.162.226] (128.224.162.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Mon, 2 Feb 2015 17:48:24 -0800
Message-ID: <54D028EC.3010001@windriver.com>
Date: Tue, 3 Feb 2015 09:48:28 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: <Erwin.Rieger.ext@rohde-schwarz.com>, <yocto@yoctoproject.org>
References: <OFE9FE701D.62B0AD26-ONC1257DE0.004958B3-C1257DE0.004958B5@rohde-schwarz.com>
In-Reply-To: <OFE9FE701D.62B0AD26-ONC1257DE0.004958B3-C1257DE0.004958B5@rohde-schwarz.com>
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
X-List-Received-Date: Tue, 03 Feb 2015 01:48:39 -0000
Content-Type: multipart/alternative;
	boundary="------------000501090501010902000706"

--------------000501090501010902000706
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

The only way I know is to make a new recipe, busybox-initramfs.bb, for 
example.
Install busybox for image rootfs and busybox-initramfs for initramfs.

Best Regards,
Chen Qi

On 02/02/2015 09:21 PM, Erwin.Rieger.ext@rohde-schwarz.com wrote:
> Hello list,
>
> i have used Yocto to create a initramfs linux kernel and a 
> corresponding rootfs for a embedded linux system.
>
> Things are working as expected, so far.
>
> Now i want to fine-tune my setup and want to use a different busybox 
> configuration in the initramfs as the one in the rootfs image.
> For example, the initramfs busybox should contain support for 
> switch-root and that is not needed in the rootfs.
> On the other hand, the rootfs should contain a "full-fledged" busybox 
> (with inetd enabled, for example).
>
> So the question is: How can i build/install a package two times with 
> differing configurations in one bitbake run?.
>
> How can this be done the Yocto-way without copying busybox.bb and 
> hacking it the way i need it?
>
> I've tried various combinations, e.g. bb-appending busybox, inheriting 
> from busybox and so on - but to no avail.
>
> Maybe someone have an idea on how to do that?
>
>
> PS:
> * The kernel recipe is derived (bbappend) 
> from core-image-minimal-initramfs.
> * Rootfs recipe is derived from core-image-minimal.bb.
>
>
> -- 
> Erwin Rieger
> -- 
>
>


--------------000501090501010902000706
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">The only way I know is to make a new
      recipe, busybox-initramfs.bb, for example.<br>
      Install busybox for image rootfs and busybox-initramfs for
      initramfs.<br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      On 02/02/2015 09:21 PM, <a class="moz-txt-link-abbreviated" href="mailto:Erwin.Rieger.ext@rohde-schwarz.com">Erwin.Rieger.ext@rohde-schwarz.com</a> wrote:<br>
    </div>
    <blockquote
cite="mid:OFE9FE701D.62B0AD26-ONC1257DE0.004958B3-C1257DE0.004958B5@rohde-schwarz.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <font size="2" face="Default Sans
        Serif,Verdana,Arial,Helvetica,sans-serif"><font face="Verdana,
          Arial, Helvetica, sans-serif">Hello list,</font>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><br>
        </div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">i
          have used Yocto to create a initramfs linux kernel and a
          corresponding rootfs for a embedded linux system.</div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><br>
        </div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">Things
          are working as expected, so far.</div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><br>
        </div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">Now
          i want to fine-tune my setup and want to use a different
          busybox configuration in the initramfs as the one in the
          rootfs image.</div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">For
          example, the initramfs busybox should contain support for
          switch-root and that is not needed in the rootfs.</div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">On
          the other hand, the rootfs should contain a "full-fledged"
          busybox (with inetd enabled, for example).</div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><br>
        </div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">So
          the question is: How can i build/install a package two times
          with differing configurations in one bitbake run?.</div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><br>
        </div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">How
          can this be done the Yocto-way without copying busybox.bb and
          hacking it the way i need it?</div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><br>
        </div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;">I've
          tried various combinations, e.g. bb-appending busybox,
          inheriting from busybox and so on - but to no avail.</div>
        <div style="font-family: Verdana, Arial, Helvetica, sans-serif;"><br>
        </div>
        <div><font face="Verdana, Arial, Helvetica, sans-serif">Maybe
            someone have an idea on how to do that?</font></div>
        <div><font face="Verdana, Arial, Helvetica, sans-serif"><br>
          </font></div>
        <div><font face="Verdana, Arial, Helvetica, sans-serif"><br>
          </font></div>
        <div><font face="Verdana, Arial, Helvetica, sans-serif">PS:</font></div>
        <div><font face="Verdana, Arial, Helvetica, sans-serif">* The
            kernel recipe is derived (bbappend)
            from core-image-minimal-initramfs.</font></div>
        <div><font face="Verdana, Arial, Helvetica, sans-serif">* Rootfs
            recipe is derived from core-image-minimal.bb.</font></div>
        <div><font face="Verdana, Arial, Helvetica, sans-serif"><br>
          </font></div>
        <div><font face="Verdana, Arial, Helvetica, sans-serif"><br>
          </font></div>
        <div><font face="Verdana, Arial, Helvetica, sans-serif">
            <div>-- </div>
            <div>Erwin Rieger</div>
            <div>-- </div>
          </font></div>
      </font>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------000501090501010902000706--
