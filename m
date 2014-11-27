Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D7A1E0087D; Thu, 27 Nov 2014 02:10:25 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C539E0030B
	for <yocto@yoctoproject.org>; Thu, 27 Nov 2014 02:10:19 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id sARAAIoP019667
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 27 Nov 2014 02:10:19 -0800 (PST)
Received: from [128.224.162.226] (128.224.162.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Thu, 27 Nov 2014 02:10:18 -0800
Message-ID: <5476F897.6040303@windriver.com>
Date: Thu, 27 Nov 2014 18:10:31 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAE_REAu3cEgRAeg5yZD8TPFovjx+qrVAXpKfGSy39xuAL-Ce5w@mail.gmail.com>
In-Reply-To: <CAE_REAu3cEgRAeg5yZD8TPFovjx+qrVAXpKfGSy39xuAL-Ce5w@mail.gmail.com>
X-Originating-IP: [128.224.162.226]
Subject: Re: udev-hwdb - post installation error (PPC target)
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
X-List-Received-Date: Thu, 27 Nov 2014 10:10:25 -0000
Content-Type: multipart/alternative;
	boundary="------------020205010901030706040308"

--------------020205010901030706040308
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/27/2014 05:48 PM, Gaurang Shastri wrote:
> Hi
>
> I have added systemd as my DISTRO_FEATURES for one of my ppc target.
>
> But in my log.do_rootfs, I can see that for "udev-hwdb" RPM, generated 
> from "systemd", post-installation script failed with core dump:
> {{{
>
> 419:Installing udev-hwdb######################################## [ 43%]
>
> Output from 
> udev-hwdb-1:208+git0+4372855b7871dd4f639d0e5fca86eff0d38aeb18-r0.2@ppce500v2:
>
> Invalid instruction
>
> NIP f67d2f6cLR f67d3130 CTR 00000000 XER 20000000
>
> MSR 00006040 HID0 00000000HF 00006000 idx 0 TB 00000000 00000000
>
> GPR00 00000000f67d3130 00000000f6ffcc78 0000000000000000 0000000000000000
>
> GPR04 0000000000000014 0000000000000010 00000000f67fe080 0000000000000215
>
> GPR08 00000000f67cd6c4 000000000000021c 0000000000001950 000000006ffffdff
>
> GPR12 0000000000000000 0000000000000000 0000000000000000 0000000000000000
>
> GPR16 0000000000000000 0000000000000000 0000000000000000 0000000000000000
>
> GPR20 0000000000000000 0000000000000000 0000000000000000 0000000000000000
>
> GPR24 0000000000000000 0000000000000000 0000000000000000 00000000f67cf014
>
> GPR28 00000000f6ffcf38 00000000f67cd000 00000000f67fd81c 000000006ffffeff
>
> CR 28000084[ EL----LG]RES ffffffff
>
> FPR00 0000000000000000 0000000000000000 0000000000000000 0000000000000000
>
> FPR04 0000000000000000 0000000000000000 0000000000000000 0000000000000000
>
> FPR08 0000000000000000 0000000000000000 0000000000000000 0000000000000000
>
> FPR12 0000000000000000 0000000000000000 0000000000000000 0000000000000000
>
> FPR16 0000000000000000 0000000000000000 0000000000000000 0000000000000000
>
> FPR20 0000000000000000 0000000000000000 0000000000000000 0000000000000000
>
> FPR24 0000000000000000 0000000000000000 0000000000000000 0000000000000000
>
> FPR28 0000000000000000 0000000000000000 0000000000000000 
> 0000000000000000 FPSCR 00000000
>
> qemu: uncaught target signal 4 (Illegal instruction) - core dumped
>
> /tmp/rpm-tmp.36340: line 7:8426 Illegal instruction(core dumped) 
> PSEUDO_UNLOAD=1 qemu-ppc -L $D -E LD_LIBRARY_PATH=$D/usr/lib:$D/lib 
> $D/bin/udevadm hwdb --update --root $D
>
> }}}
>
> >From the above, it is clear that we are missing correct 
> "QEMU_OPTIONS" while passing through "qemu-ppc" binary in 
> qemu.bbclass. I am able to make it working with following patch:
>
> {{{
>
> $ git diff meta/classes/qemu.bbclass diff --git 
> a/meta/classes/qemu.bbclass b/meta/classes/qemu.bbclass index 
> 3d437b0..8353839 100644
>
> --- a/meta/classes/qemu.bbclass
>
> +++ b/meta/classes/qemu.bbclass
>
> @@ -29,7 +29,8 @@ def qemu_run_binary(data, rootfs_path, binary):
>
> libdir = rootfs_path + data.getVar("libdir", False)
>
> base_libdir = rootfs_path + data.getVar("base_libdir", False)
>
> +qemu_option = data.getVar("QEMU_OPTIONS",True)
>
> -return "PSEUDO_UNLOAD=1 " + qemu_binary + " -L " + rootfs_path\
>
> +return "PSEUDO_UNLOAD=1 " + qemu_binary + " " + qemu_option + " -L
>
> + " + rootfs_path\
>
> + " -E LD_LIBRARY_PATH=" + libdir + ":" + base_libdir + " "\
>
> + rootfs_path + binary
>
> }}}
>
> Please check the above and let me know so that I can send the patch in 
> correct format (via filing a bug and attaching as regular patch format)
>
> Regards,
> Gaurang Shastri
>

I think this correct. Please send out patch to 
openembedded-core@lists.openembedded.org.

Regards,
Chen Qi

>
>
>


--------------020205010901030706040308
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 11/27/2014 05:48 PM, Gaurang Shastri
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAE_REAu3cEgRAeg5yZD8TPFovjx+qrVAXpKfGSy39xuAL-Ce5w@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div>
          <div>
            <div>Hi<br>
              <br>
            </div>
            I have added systemd as my DISTRO_FEATURES for one of my ppc
            target.<br>
            <br>
          </div>
          But in my log.do_rootfs, I can see that for "udev-hwdb" RPM,
          generated from "systemd", post-installation script failed with
          core dump:<br>
          {{{<br>
          <p class="">419:Installing udev-hwdb<span style="">       </span>########################################
[
            43%]</p>
          <p class="">Output from
udev-hwdb-1:208+git0+4372855b7871dd4f639d0e5fca86eff0d38aeb18-r0.2@ppce500v2:</p>
          <p class="">Invalid instruction</p>
          <p class="">NIP f67d2f6c<span style="">   </span>LR
            f67d3130 CTR 00000000 XER 20000000</p>
          <p class="">MSR 00006040 HID0 00000000<span style="">  </span>HF
            00006000 idx 0 TB 00000000 00000000</p>
          <p class="">GPR00 00000000f67d3130 00000000f6ffcc78
            0000000000000000
            0000000000000000</p>
          <p class="">GPR04 0000000000000014 0000000000000010
            00000000f67fe080
            0000000000000215</p>
          <p class="">GPR08 00000000f67cd6c4 000000000000021c
            0000000000001950
            000000006ffffdff</p>
          <p class="">GPR12 0000000000000000 0000000000000000
            0000000000000000
            0000000000000000</p>
          <p class="">GPR16 0000000000000000 0000000000000000
            0000000000000000
            0000000000000000</p>
          <p class="">GPR20 0000000000000000 0000000000000000
            0000000000000000
            0000000000000000</p>
          <p class="">GPR24 0000000000000000 0000000000000000
            0000000000000000
            00000000f67cf014</p>
          <p class="">GPR28 00000000f6ffcf38 00000000f67cd000
            00000000f67fd81c
            000000006ffffeff</p>
          <p class="">CR 28000084<span style="">  </span>[
            E<span style="">  </span>L<span style=""> 
            </span>-<span style="">  </span>-<span style="">  </span>-<span
              style=""> 
            </span>-<span style="">  </span>L<span style="">  </span>G<span
              style="">  </span>]<span style="">             </span>RES
            ffffffff</p>
          <p class="">FPR00 0000000000000000 0000000000000000
            0000000000000000
            0000000000000000</p>
          <p class="">FPR04 0000000000000000 0000000000000000
            0000000000000000
            0000000000000000</p>
          <p class="">FPR08 0000000000000000 0000000000000000
            0000000000000000
            0000000000000000</p>
          <p class="">FPR12 0000000000000000 0000000000000000
            0000000000000000
            0000000000000000</p>
          <p class="">FPR16 0000000000000000 0000000000000000
            0000000000000000
            0000000000000000</p>
          <p class="">FPR20 0000000000000000 0000000000000000
            0000000000000000
            0000000000000000</p>
          <p class="">FPR24 0000000000000000 0000000000000000
            0000000000000000
            0000000000000000</p>
          <p class="">FPR28 0000000000000000 0000000000000000
            0000000000000000
            0000000000000000 FPSCR 00000000</p>
          <p class="">qemu: uncaught target signal 4 (Illegal
            instruction) -
            core dumped</p>
          <p class="">/tmp/rpm-tmp.36340:
            line 7:<span style="">  </span>8426 Illegal instruction<span
              style="">     </span>(core dumped) PSEUDO_UNLOAD=1
            qemu-ppc -L
            $D -E LD_LIBRARY_PATH=$D/usr/lib:$D/lib $D/bin/udevadm hwdb
            --update --root $D</p>
          <p class="">}}}</p>
          &gt;From the above, it is clear that we are missing correct
          "QEMU_OPTIONS" while passing through "qemu-ppc" binary in
          qemu.bbclass. I am able to make it working with following
          patch:<br>
          <p class="">{{{</p>
          <p class="">$
            git diff meta/classes/qemu.bbclass diff --git
            a/meta/classes/qemu.bbclass
            b/meta/classes/qemu.bbclass index 3d437b0..8353839 100644</p>
          <p class="">--- a/meta/classes/qemu.bbclass</p>
          <p class="">+++ b/meta/classes/qemu.bbclass</p>
          <p class="">@@ -29,7 +29,8 @@ def qemu_run_binary(data,
            rootfs_path,
            binary):</p>
          <p class=""> </p>
          <p class=""><span style="">     </span>libdir =
            rootfs_path + data.getVar("libdir", False)</p>
          <p class=""><span style="">     </span>base_libdir =
            rootfs_path + data.getVar("base_libdir", False)</p>
          <p class="">+<span style="">    </span>qemu_option =
            data.getVar("QEMU_OPTIONS",True)</p>
          <p class=""> </p>
          <p class="">-<span style="">    </span>return
            "PSEUDO_UNLOAD=1 " + qemu_binary + " -L " + rootfs_path\</p>
          <p class="">+<span style="">    </span>return
            "PSEUDO_UNLOAD=1 " + qemu_binary + " " + qemu_option +
            " -L </p>
          <p class="">+ " + rootfs_path\</p>
          <p class=""><span style="">             </span>+
            " -E LD_LIBRARY_PATH=" + libdir + ":" + base_libdir +
            " "\</p>
          <p class=""><span style="">             </span>+
            rootfs_path + binary</p>
          <p class="">}}} <br>
          </p>
          Please check the above and let me know so that I can send the
          patch in correct format (via filing a bug and attaching as
          regular patch format)<br>
          <br>
        </div>
        Regards,<br>
        Gaurang Shastri<br>
        <div>
          <div><br>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    I think this correct. Please send out patch to
    <a class="moz-txt-link-abbreviated" href="mailto:openembedded-core@lists.openembedded.org">openembedded-core@lists.openembedded.org</a>.<br>
    <br>
    Regards,<br>
    Chen Qi<br>
    <br>
    <blockquote
cite="mid:CAE_REAu3cEgRAeg5yZD8TPFovjx+qrVAXpKfGSy39xuAL-Ce5w@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <div>
            <div>
              <div><br>
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
  </body>
</html>

--------------020205010901030706040308--
