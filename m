Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFEC8EB64DC
	for <webhook@archiver.kernel.org>; Thu,  6 Jul 2023 15:03:20 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
 by mx.groups.io with SMTP id smtpd.web11.26369.1688655794525973595
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jul 2023 08:03:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=PyidiDON;
 spf=pass (domain: gmail.com, ip: 209.85.167.175, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-39e86b3da52so490440b6e.0
        for <yocto@lists.yoctoproject.org>; Thu, 06 Jul 2023 08:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688655794; x=1691247794;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H2Ewd36CkANLN9C9/4By5vucHwdjgQWWe2mtKqBWUKY=;
        b=PyidiDON548QlWAs9zZH6NtMB3jKU5NGPqQ6abSQElRCG4J1R9sjbElDnrUXLyFusX
         L2edpJppKh48LWHdvbmfGg27jnN3HDN9+J0ZuOg+eYEbiGtiwqSB7tHGNmCBYD6T7jKU
         BDO9JlTLFjVchJRL1sCPE93eiuyBg2zxP23sipRavgeunuCgLhnWhJnlyL0Re9cNLzVb
         GZExHdO/WN9aH/L5DRu/LmE5UdlUN40n0ExPJpcaPl4Mx1DjJqXovtPzFwhInEASIzSz
         D9NJ3Rr73XSkoGWONZZprB68JN1bEJwvX47rTg+zABXZASOrl5VFCdfY5YnoXw2LtoCw
         np/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688655794; x=1691247794;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H2Ewd36CkANLN9C9/4By5vucHwdjgQWWe2mtKqBWUKY=;
        b=Rt29JnZmpm4Lw6MLSxzyv7WzuGFHmP6wb8AklShxes0TTRKgBDcV2DAD+WPJtOZSrp
         hztVHRkw10pHVKSTSLu439ftScuPzNierBAME2EKQezAND6BRADLZHftGil0m8ByJTII
         lAR0EZ/gecmmYaMbWiBk3W+YZz05WzRav0yqjrhUADzfB+zmAuyRqnueLeOCaoZZ+j8t
         eVWoKtDPdJSzzYjYEYh4T11A6Fqj2A1dF5FNcQadSz59TQ2UidIeHzUVe8zHLAHu4i/p
         cUD8OA8EbdVXq43x4lQchshYlv56XDSeinrDqeE8dBShG8bfLurFzWhaHgIaq+kO3HFX
         20EA==
X-Gm-Message-State: ABy/qLbms1JbPlcPB4WtNWBgA0DJZRc2rZPfBXGTvzq1nj4j9gAaiMD2
	itCzc6IfdLQxRblhfOZY7jE9zwJ8GstdgzodnthMXv5q
X-Google-Smtp-Source: APBJJlFFIDCLBRbHUGVrzWuzvrbtm1lhxS89uiI7OCxC7MK5yjpYaF2kJrBf0DOke0gXMJG9Rz+Dkdes2ELE9Bjtcg8=
X-Received: by 2002:a05:6808:13c4:b0:39e:aa96:3ab3 with SMTP id
 d4-20020a05680813c400b0039eaa963ab3mr1337382oiw.0.1688655793242; Thu, 06 Jul
 2023 08:03:13 -0700 (PDT)
MIME-Version: 1.0
References: <Jf7d.1688649950643635911.MtCW@lists.yoctoproject.org>
In-Reply-To: <Jf7d.1688649950643635911.MtCW@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 6 Jul 2023 08:02:47 -0700
Message-ID: <CAMKF1soOm7eQ46G3Uk9PMS=J7HPdMdBOHBVoyLu_YDD_wKJoGw@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] wifi
To: oosman3@yahoo.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Jul 2023 15:03:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60530

what does ifconfig -a say

On Thu, Jul 6, 2023 at 6:25=E2=80=AFAM oosman3 via lists.yoctoproject.org
<oosman3=3Dyahoo.com@lists.yoctoproject.org> wrote:
>
> I am building my raspberrypi wic image using the layer meta-raspberrypi.
>
> I am using a raspiberrypi compute module 4 with wifi chip.
>
> I just can't seem to get the wlan0 device to appear when I type ifconfig.
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
> root@raspberrypi4-64:~# ifconfig
> eth0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
>         inet 192.168.7.8  netmask 255.255.255.0  broadcast 192.168.7.255
>         ether dc:a6:32:e3:eb:fe  txqueuelen 1000  (Ethernet)
>         RX packets 407  bytes 62442 (60.9 KiB)
>         RX errors 0  dropped 0  overruns 0  frame 0
>         TX packets 567  bytes 94749 (92.5 KiB)
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
>
> lo: flags=3D73<UP,LOOPBACK,RUNNING>  mtu 65536
>         inet 127.0.0.1  netmask 255.0.0.0
>         inet6 ::1  prefixlen 128  scopeid 0x10<host>
>         loop  txqueuelen 1000  (Local Loopback)
>         RX packets 4047  bytes 252037 (246.1 KiB)
>         RX errors 0  dropped 0  overruns 0  frame 0
>         TX packets 4047  bytes 252037 (246.1 KiB)
>         TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>
>
> Here is a filtered output of my lsmod command
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
> root@raspberrypi4-64:~# lsmod
> Module                  Size  Used by
> 88XXau               2265088  0
> cmac                   16384  3
> algif_hash             16384  1
> aes_arm64              16384  3
> aes_generic            36864  1 aes_arm64
> algif_skcipher         16384  1
> af_alg                 28672  6 algif_hash,algif_skcipher
> bnep                   24576  2
> 8021q                  32768  0
> garp                   16384  1 8021q
> stp                    16384  1 garp
> llc                    16384  2 stp,garp
> imx219                 24576  0
> mcp251x                24576  0
> spidev                 20480  0
> can_dev                40960  1 mcp251x
> hci_uart               45056  0
> btbcm                  24576  1 hci_uart
> v3d                    90112  1
> bluetooth             585728  26 hci_uart,btbcm,bnep
> i2c_mux_pinctrl        16384  0
> gpu_sched              49152  1 v3d
> snd_soc_simple_card    20480  0
> snd_soc_simple_card_utils    28672  1 snd_soc_simple_card
> drm_shmem_helper       24576  1 v3d
> raspberrypi_hwmon      16384  0
> i2c_mux                16384  1 i2c_mux_pinctrl
> i2c_brcmstb            16384  0
> bcm2835_unicam         53248  0
> dwc2                  192512  0
> roles                  20480  1 dwc2
> v4l2_dv_timings        40960  1 bcm2835_unicam
> v4l2_fwnode            24576  2 imx219,bcm2835_unicam
> ecdh_generic           16384  2 bluetooth
> v4l2_async             24576  3 v4l2_fwnode,imx219,bcm2835_unicam
> ecc                    36864  1 ecdh_generic
> libaes                 16384  3 aes_arm64,bluetooth,aes_generic
> spi_bcm2835            20480  0
> snd_soc_bcm2835_i2s    20480  0
> bcm2835_codec          49152  0
> rpivid_hevc            49152  0
> bcm2835_v4l2           45056  0
> bcm2835_isp            28672  0
> bcm2835_mmal_vchiq     36864  3 bcm2835_codec,bcm2835_v4l2,bcm2835_isp
> v4l2_mem2mem           40960  2 bcm2835_codec,rpivid_hevc
> videobuf2_vmalloc      16384  1 bcm2835_v4l2
> videobuf2_dma_contig    20480  4 bcm2835_codec,bcm2835_unicam,rpivid_hevc=
,bcm2835_isp
> videobuf2_memops       16384  2 videobuf2_vmalloc,videobuf2_dma_contig
> videobuf2_v4l2         32768  6 bcm2835_codec,bcm2835_unicam,bcm2835_v4l2=
,rpivid_hevc,v4l2_mem2mem,bcm2835_isp
> videobuf2_common       69632  10 bcm2835_codec,videobuf2_vmalloc,videobuf=
2_dma_contig,videobuf2_v4l2,bcm2835_unicam,bcm2835_v4l2,rpivid_hevc,v4l2_me=
m2mem,videobuf2_memops,bcm2835_isp
> videodev              274432  10 v4l2_async,bcm2835_codec,imx219,videobuf=
2_v4l2,bcm2835_unicam,bcm2835_v4l2,videobuf2_common,rpivid_hevc,v4l2_mem2me=
m,bcm2835_isp
> vc_sm_cma              32768  2 bcm2835_mmal_vchiq,bcm2835_isp
> snd_bcm2835            28672  0
> mc                     61440  10 v4l2_async,videodev,bcm2835_codec,imx219=
,videobuf2_v4l2,bcm2835_unicam,videobuf2_common,rpivid_hevc,v4l2_mem2mem,bc=
m2835_isp
> uio_pdrv_genirq        16384  0
> nvmem_rmem             16384  0
> uio                    24576  1 uio_pdrv_genirq
> sch_fq_codel           20480  6
> brcmutil               24576  0
> cfg80211              929792  1 88XXau
> rfkill                 32768  4 bluetooth,cfg80211
> fuse                  139264  1
> ipv6                  552960  28
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> And here is my /boot/config.txt
>
> root@raspberrypi4-64:~# cat /boot/config.txt
> #########################################################################=
#######
> ##  Raspberry Pi Configuration Settings
> ##
> ##  Revision 16, 2013/06/22
> ##
> ##  Details taken from the eLinux wiki
> ##  For up-to-date information please refer to wiki page.
> ##
> ##  Wiki Location : http://elinux.org/RPiconfig
> ##
> ##
> ##  Description:
> ##    Details of each setting are described with each section that begins=
 with
> ##    a double hashed comment ('##')
> ##    It is up to the user to remove the single hashed comment ('#') from=
 each
> ##    option they want to enable, and to set the specific value of that o=
ption.
> ##
> ##  Overclock settings will be disabled at runtime if the SoC reaches tem=
p_limit
> ##
> #########################################################################=
#######
>
> #########################################################################=
#######
> ##  Standard Definition Video Settings
> #########################################################################=
#######
>
> ## sdtv_mode
> ##     defines the TV standard for composite output
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Normal NTSC (Default)
> ##     1        Japanese version of NTSC - no pedestal
> ##     2        Normal PAL
> ##     3        Brazilian version of PAL - 525/60 rather than 625/50, dif=
ferent
> ##              subcarrier
> ##
> #sdtv_mode=3D0
>
> ## sdtv_aspect
> ##     defines the aspect ratio for composite output
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     1        4:3 (Default)
> ##     2        14:9
> ##     3        16:9
> ##
> #sdtv_aspect=3D1
>
> ## sdtv_disable_colourburst
> ##     Disables colour burst on composite output. The picture will be
> ##     monochrome, but possibly sharper
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Colour burst is enabled (Default)
> ##     1        Colour burst is disabled
> ##
> #sdtv_disable_colourburst=3D1
>
> #########################################################################=
#######
> ##  High Definition Video Settings
> #########################################################################=
#######
>
> ## hdmi_safe
> ##     Use "safe mode" settings to try to boot with maximum hdmi compatib=
ility.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Disabled (Default)
> ##     1        Enabled (this does: hdmi_force_hotplug=3D1,
> ##                                  hdmi_ignore_edid=3D0xa5000080,
> ##                                  config_hdmi_boost=3D4, hdmi_group=3D2=
,
> ##                                  hdmi_mode=3D4, disable_overscan=3D0,
> ##                                  overscan_left=3D24, overscan_right=3D=
24,
> ##                                  overscan_top=3D24, overscan_bottom=3D=
24)
> ##
> #hdmi_safe=3D1
>
> ## hdmi_force_hotplug
> ##     Pretends HDMI hotplug signal is asserted so it appears a HDMI disp=
lay
> ##     is attached
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Disabled (Default)
> ##     1        Use HDMI mode even if no HDMI monitor is detected
> ##
> #hdmi_force_hotplug=3D1
>
> ## hdmi_ignore_hotplug
> ##     Pretends HDMI hotplug signal is not asserted so it appears a HDMI
> ##     display is not attached
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Disabled (Default)
> ##     1        Use composite mode even if HDMI monitor is detected
> ##
> #hdmi_ignore_hotplug=3D1
>
> ## hdmi_drive
> ##     chooses between HDMI and DVI modes
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     1        Normal DVI mode (No sound)
> ##     2        Normal HDMI mode (Sound will be sent if supported and ena=
bled)
> ##
> #hdmi_drive=3D2
>
> ## hdmi_ignore_edid
> ##     Enables the ignoring of EDID/display data
> ##
> #hdmi_ignore_edid=3D0xa5000080
>
> ## hdmi_edid_file
> ##     Read the EDID data from the edid.dat file instead of from the atta=
ched
> ##     device
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Read EDID data from attached device (Default)
> ##     1        Read EDID data from edid.txt file
> ##
> #hdmi_edid_file=3D1
>
> ## hdmi_ignore_edid_audio
> ##     Pretends all audio formats are unsupported by display. This means =
ALSA
> ##     will default to analogue.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Use EDID provided values (Default)
> ##     1        Pretend all audio formats are unsupported
> ##
> #hdmi_ignore_edid_audio=3D1
>
> ## hdmi_force_edid_audio
> ##     Pretends all audio formats are supported by display, allowing
> ##     passthrough of DTS/AC3 even when not reported as supported.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Use EDID provided values (Default)
> ##     1        Pretend all audio formats are supported
> ##
> #hdmi_force_edid_audio=3D1
>
> ## hdmi_force_edid_3d
> ##     Pretends all CEA modes support 3D even when edid doesn't indicate
> ##     support for them.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Use EDID provided values (Default)
> ##     1        Pretend 3D mode is supported
> ##
> #hdmi_force_edid_3d=3D1
>
> ## avoid_edid_fuzzy_match
> ##     Avoid fuzzy matching of modes described in edid.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Use fuzzy matching (Default)
> ##     1        Avoid fuzzy matching
> ##
> #avoid_edid_fuzzy_match=3D1
>
> ## hdmi_pixel_encoding
> ##     Force the pixel encoding mode.
> ##     By default it will use the mode requested from edid so shouldn't
> ##     need changing.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Use EDID provided values (Default)
> ##     1        RGB limited   (16-235)
> ##     2        RGB full      ( 0-255)
> ##     3        YCbCr limited (16-235)
> ##     4        YCbCr limited ( 0-255)
> ##
> #hdmi_pixel_encoding=3D1
>
> ## hdmi_group
> ##     Defines the HDMI type
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Use the preferred group reported by the edid (Default)
> ##     1        CEA
> ##     2        DMT
> ##
> #hdmi_group=3D1
>
> ## hdmi_mode
> ##     defines screen resolution in CEA or DMT format
> ##
> ##     H means 16:9 variant (of a normally 4:3 mode).
> ##     2x means pixel doubled (i.e. higher clock rate, with each pixel re=
peated
> ##                                  twice)
> ##     4x means pixel quadrupled (i.e. higher clock rate, with each pixel
> ##                                     repeated four times)
> ##     reduced blanking means fewer bytes are used for blanking within th=
e data
> ##                      stream (i.e. lower clock rate, with fewer wasted =
bytes)
> ##
> ##     Value    hdmi_group=3DCEA                  hdmi_group=3DDMT
> ##     ------------------------------------------------------------------=
-------
> ##     1        VGA                             640x350   85Hz
> ##     2        480p  60Hz                      640x400   85Hz
> ##     3        480p  60Hz  H                   720x400   85Hz
> ##     4        720p  60Hz                      640x480   60Hz
> ##     5        1080i 60Hz                      640x480   72Hz
> ##     6        480i  60Hz                      640x480   75Hz
> ##     7        480i  60Hz  H                   640x480   85Hz
> ##     8        240p  60Hz                      800x600   56Hz
> ##     9        240p  60Hz  H                   800x600   60Hz
> ##     10       480i  60Hz  4x                  800x600   72Hz
> ##     11       480i  60Hz  4x H                800x600   75Hz
> ##     12       240p  60Hz  4x                  800x600   85Hz
> ##     13       240p  60Hz  4x H                800x600   120Hz
> ##     14       480p  60Hz  2x                  848x480   60Hz
> ##     15       480p  60Hz  2x H                1024x768  43Hz  DO NOT US=
E
> ##     16       1080p 60Hz                      1024x768  60Hz
> ##     17       576p  50Hz                      1024x768  70Hz
> ##     18       576p  50Hz  H                   1024x768  75Hz
> ##     19       720p  50Hz                      1024x768  85Hz
> ##     20       1080i 50Hz                      1024x768  120Hz
> ##     21       576i  50Hz                      1152x864  75Hz
> ##     22       576i  50Hz  H                   1280x768        reduced b=
lanking
> ##     23       288p  50Hz                      1280x768  60Hz
> ##     24       288p  50Hz  H                   1280x768  75Hz
> ##     25       576i  50Hz  4x                  1280x768  85Hz
> ##     26       576i  50Hz  4x H                1280x768  120Hz reduced b=
lanking
> ##     27       288p  50Hz  4x                  1280x800        reduced b=
lanking
> ##     28       288p  50Hz  4x H                1280x800  60Hz
> ##     29       576p  50Hz  2x                  1280x800  75Hz
> ##     30       576p  50Hz  2x H                1280x800  85Hz
> ##     31       1080p 50Hz                      1280x800  120Hz reduced b=
lanking
> ##     32       1080p 24Hz                      1280x960  60Hz
> ##     33       1080p 25Hz                      1280x960  85Hz
> ##     34       1080p 30Hz                      1280x960  120Hz reduced b=
lanking
> ##     35       480p  60Hz  4x                  1280x1024 60Hz
> ##     36       480p  60Hz  4x H                1280x1024 75Hz
> ##     37       576p  50Hz  4x                  1280x1024 85Hz
> ##     38       576p  50Hz  4x H                1280x1024 120Hz reduced b=
lanking
> ##     39       1080i 50Hz  reduced blanking    1360x768  60Hz
> ##     40       1080i 100Hz                     1360x768  120Hz reduced b=
lanking
> ##     41       720p  100Hz                     1400x1050       reduced b=
lanking
> ##     42       576p  100Hz                     1400x1050 60Hz
> ##     43       576p  100Hz H                   1400x1050 75Hz
> ##     44       576i  100Hz                     1400x1050 85Hz
> ##     45       576i  100Hz H                   1400x1050 120Hz reduced b=
lanking
> ##     46       1080i 120Hz                     1440x900        reduced b=
lanking
> ##     47       720p  120Hz                     1440x900  60Hz
> ##     48       480p  120Hz                     1440x900  75Hz
> ##     49       480p  120Hz H                   1440x900  85Hz
> ##     50       480i  120Hz                     1440x900  120Hz reduced b=
lanking
> ##     51       480i  120Hz H                   1600x1200 60Hz
> ##     52       576p  200Hz                     1600x1200 65Hz
> ##     53       576p  200Hz H                   1600x1200 70Hz
> ##     54       576i  200Hz                     1600x1200 75Hz
> ##     55       576i  200Hz H                   1600x1200 85Hz
> ##     56       480p  240Hz                     1600x1200 120Hz reduced b=
lanking
> ##     57       480p  240Hz H                   1680x1050       reduced b=
lanking
> ##     58       480i  240Hz                     1680x1050 60Hz
> ##     59       480i  240Hz H                   1680x1050 75Hz
> ##     60                                       1680x1050 85Hz
> ##     61                                       1680x1050 120Hz reduced b=
lanking
> ##     62                                       1792x1344 60Hz
> ##     63                                       1792x1344 75Hz
> ##     64                                       1792x1344 120Hz reduced b=
lanking
> ##     65                                       1856x1392 60Hz
> ##     66                                       1856x1392 75Hz
> ##     67                                       1856x1392 120Hz reduced b=
lanking
> ##     68                                       1920x1200       reduced b=
lanking
> ##     69                                       1920x1200 60Hz
> ##     70                                       1920x1200 75Hz
> ##     71                                       1920x1200 85Hz
> ##     72                                       1920x1200 120Hz reduced b=
lanking
> ##     73                                       1920x1440 60Hz
> ##     74                                       1920x1440 75Hz
> ##     75                                       1920x1440 120Hz reduced b=
lanking
> ##     76                                       2560x1600       reduced b=
lanking
> ##     77                                       2560x1600 60Hz
> ##     78                                       2560x1600 75Hz
> ##     79                                       2560x1600 85Hz
> ##     80                                       2560x1600 120Hz reduced b=
lanking
> ##     81                                       1366x768  60Hz
> ##     82                                       1080p     60Hz
> ##     83                                       1600x900        reduced b=
lanking
> ##     84                                       2048x1152       reduced b=
lanking
> ##     85                                       720p      60Hz
> ##     86                                       1366x768        reduced b=
lanking
> ##
> #hdmi_mode=3D1
>
> ## config_hdmi_boost
> ##     configure the signal strength of the HDMI interface.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        (Default)
> ##     1
> ##     2
> ##     3
> ##     4        Try if you have interference issues with HDMI
> ##     5
> ##     6
> ##     7        Maximum
> ##
> #config_hdmi_boost=3D0
>
> ## hdmi_ignore_cec_init
> ##     Doesn't sent initial active source message.  Avoids bringing
> ##     (CEC enabled) TV out of standby and channel switch when rebooting.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Normal behaviour (Default)
> ##     1        Doesn't sent initial active source message
> ##
> #hdmi_ignore_cec_init=3D1
>
> ## hdmi_ignore_cec
> ##     Pretends CEC is not supported at all by TV.
> ##     No CEC functions will be supported.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Normal behaviour (Default)
> ##     1        Pretend CEC is not supported by TV
> ##
> #hdmi_ignore_cec=3D1
>
> #########################################################################=
#######
> ##  Overscan Video Settings
> #########################################################################=
#######
>
> ## overscan_left
> ##     Number of pixels to skip on left
> ##
> #overscan_left=3D0
>
> ## overscan_right
> ##     Number of pixels to skip on right
> ##
> #overscan_right=3D0
>
> ## overscan_top
> ##     Number of pixels to skip on top
> ##
> #overscan_top=3D0
>
> ## overscan_bottom
> ##     Number of pixels to skip on bottom
> ##
> #overscan_bottom=3D0
>
> ## disable_overscan
> ##     Set to 1 to disable overscan
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Overscan Enabled (Default)
> ##     1        Overscan Disabled
> ##
> #disable_overscan=3D1
>
> #########################################################################=
#######
> ##  Framebuffer Video Settings
> #########################################################################=
#######
>
> ## framebuffer_width
> ##     Console framebuffer width in pixels. Default is display width minu=
s
> ##     overscan.
> ##
> #framebuffer_width=3D0
>
> ## framebuffer_height
> ##     Console framebuffer height in pixels. Default is display height mi=
nus
> ##     overscan.
> ##
> #framebuffer_height=3D0
>
> ## framebuffer_depth
> ##     Console framebuffer depth in bits per pixel.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     8        Valid, but default RGB palette makes an unreadable screen
> ##     16       (Default)
> ##     24       Looks better but has corruption issues as of 2012/06/15
> ##     32       Has no corruption issues but needs framebuffer_ignore_alp=
ha=3D1
> ##              and shows the wrong colors as of 2012/06/15
> ##
> #framebuffer_depth=3D16
>
> ## framebuffer_ignore_alpha
> ##     Set to 1 to disable alpha channel. Helps with 32bit.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Enable Alpha Channel (Default)
> ##     1        Disable Alpha Channel
> ##
> #framebuffer_ignore_alpha=3D0
>
> #########################################################################=
#######
> ##  General Video Settings
> #########################################################################=
#######
>
> ## display_rotate
> ##     Rotate the display clockwise or flip the display.
> ##     The 90 and 270 degrees rotation options require additional memory =
on GPU,
> ##     so won't work with the 16M GPU split.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        0 degrees (Default)
> ##     1        90 degrees
> ##     2        180 degrees
> ##     3        270 degrees
> ##     0x10000  Horizontal flip
> ##     0x20000  Vertical flip
> ##
> #display_rotate=3D0
>
> ## dispmanx_offline
> ##     Set to "1" to enable offline compositing
> ##
> ##     Default 0
> ##
> #dispmanx_offline=3D0
>
> #########################################################################=
#######
> ##  Licensed Codecs
> ##
> ##  Hardware decoding of additional codecs can be enabled by purchasing a
> ##  license that is locked to the CPU serial number of your Raspberry Pi.
> ##
> ##  Up to 8 licenses per CODEC can be specified as a comma seperated list=
.
> ##
> #########################################################################=
#######
>
> ## decode_MPG2
> ##     License key to allow hardware MPEG-2 decoding.
> ##
> #decode_MPG2=3D0x12345678
>
> ## decode_WVC1
> ##     License key to allow hardware VC-1 decoding.
> ##
> #decode_WVC1=3D0x12345678
>
> #########################################################################=
#######
> ##  Camera Settings
> #########################################################################=
#######
>
> ## start_x
> ##     Set to "1" to enable the camera module.
> ##
> ##     Enabling the camera requires gpu_mem option to be specified with a=
 value
> ##     of at least 128.
> ##
> ##     Default 0
> ##
> start_x=3D1
>
> ## disable_camera_led
> ##     Turn off the red camera led when recording video or taking a still
> ##     picture.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        LED enabled (Default)
> ##     1        LED disabled
> ##
> #disable_camera_led=3D1
>
> #########################################################################=
#######
> ##  Test Settings
> #########################################################################=
#######
>
> ## test_mode
> ##     Enable test sound/image during boot for manufacturing test.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Disable Test Mod (Default)
> ##     1        Enable Test Mode
> ##
> #test_mode=3D0
>
> #########################################################################=
#######
> ##  Memory Settings
> #########################################################################=
#######
>
> ## disable_l2cache
> ##     Disable arm access to GPU's L2 cache. Needs corresponding L2 disab=
led
> ##     kernel.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Enable L2 Cache (Default)
> ##     1        Disable L2 cache
> ##
> #disable_l2cache=3D0
>
> ## gpu_mem
> ##     GPU memory allocation in MB for all board revisions.
> ##
> ##     Default 64
> ##
> #gpu_mem=3D128
>
> ## gpu_mem_256
> ##     GPU memory allocation in MB for 256MB board revision.
> ##     This option overrides gpu_mem.
> ##
> #gpu_mem_256=3D192
>
> ## gpu_mem_512
> ##     GPU memory allocation in MB for 512MB board revision.
> ##     This option overrides gpu_mem.
> ##
> #gpu_mem_512=3D448
>
> ## gpu_mem_1024
> ##     GPU memory allocation in MB for 1024MB board revision.
> ##     This option overrides gpu_mem.
> ##
> #gpu_mem_1024=3D944
>
> ## disable_pvt
> ##     Disable adjusting the refresh rate of RAM every 500ms
> ##     (measuring RAM temparature).
> ##
> #disable_pvt=3D1
>
> #########################################################################=
#######
> ##  CMA - Dynamic Memory Split
> ##
> ##  CMA enables dynamic management of the ARM and GPU memory split at run=
time.
> ##
> ##  The following options need to be in cmdline.txt for CMA to work:
> ##    coherent_pool=3D6M smsc95xx.turbo_mode=3DN
> ##
> #########################################################################=
#######
>
> ## cma_lwm
> ##     When GPU has less than cma_lwm (low water mark) memory available i=
t
> ##     will request some from ARM.
> ##
> #cma_lwm=3D16
>
> ## cma_hwm
> ##     When GPU has more than cma_hwm (high water mark) memory available =
it
> ##     will release some to ARM.
> ##
> #cma_hwm=3D32
>
> #########################################################################=
#######
> ##  Boot Option Settings
> #########################################################################=
#######
>
> ## disable_commandline_tags
> ##     Stop start.elf from filling in ATAGS (memory from 0x100) before
> ##     launching kernel
> ##
> #disable_commandline_tags=3D0
>
> ## cmdline (string)
> ##     Command line parameters. Can be used instead of cmdline.txt file
> ##
> #cmdline=3D""
>
> ## kernel (string)
> ##     Alternative name to use when loading kernel.
> ##
> #kernel=3D""
>
> ## kernel_address
> ##     Address to load kernel.img file at
> ##
> #kernel_address=3D0x00000000
>
> ## kernel_old
> ##     Support loading old kernels
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Disabled (Default)
> ##     1        Load kernel at address 0x00000000
> ##
> #kernel_old=3D1
>
> ## ramfsfile (string)
> ##     ramfs file to load
> ##
> #ramfsfile=3D""
>
> ## ramfsaddr
> ##     Address to load ramfs file at
> ##
> #ramfsaddr=3D0x00000000
>
> ## initramfs (string address)
> ##     ramfs file and address to load it at (it's like ramfsfile+ramfsadd=
r in
> ##     one option).
> ##
> ##     NOTE: this option uses different syntax than all other options - y=
ou
> ##           should not use "=3D" character here.
> ##
> #initramfs initramf.gz 0x00800000
>
> ## device_tree_address
> ##     Address to load device_tree at
> ##
> #device_tree_address=3D0x00000000
>
> ## init_uart_baud
> ##     Initial uart baud rate.
> ##
> ##     Default 115200
> ##
> #init_uart_baud=3D115200
>
> ## init_uart_clock
> ##     Initial uart clock.
> ##
> ##     Default 3000000 (3MHz)
> ##
> #init_uart_clock=3D3000000
>
> ## init_emmc_clock
> ##     Initial emmc clock, increasing this can speedup your SD-card.
> ##
> ##     Default 100000000 (100mhz)
> ##
> #init_emmc_clock=3D100000000
>
> ## boot_delay
> ##     Wait for a given number of seconds in start.elf before loading
> ##     kernel.img.
> ##
> ##     delay =3D (1000 * boot_delay) + boot_delay_ms
> ##
> ##     Default 1
> ##
> #boot_delay=3D0
>
> ## boot_delay_ms
> ##     Wait for a given number of milliseconds in start.elf before loadin=
g
> ##     kernel.img.
> ##
> ##     delay =3D (1000 * boot_delay) + boot_delay_ms
> ##
> ##     Default 0
> ##
> #boot_delay_ms=3D0
>
> ## avoid_safe_mode
> ##     Adding a jumper between pins 5 & 6 of P1 enables a recovery Safe M=
ode.
> ##     If pins 5 & 6 are used for connecting to external devices (e.g. GP=
IO),
> ##     then this setting can be used to ensure Safe Mode is not triggered=
.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Respect Safe Mode input (Default)
> ##     1        Ignore Safe Mode input
> ##
> #avoid_safe_mode=3D1
>
> ## disable_splash
> ##     Avoids the rainbow splash screen on boot.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Splash screen enabled (Default)
> ##     1        Splash screen disabled
> ##
> #disable_splash=3D1
>
> #########################################################################=
#######
> ##  Overclocking Settings
> ##
> ##  ARM, SDRAM and GPU each have their own PLLs and can have unrelated
> ##  frequencies.
> ##
> ##  The GPU core, h264, v3d and isp share a PLL, so need to have related
> ##  frequencies.
> ##  pll_freq =3D floor(2400 / (2 * core_freq)) * (2 * core_freq)
> ##  gpu_freq =3D pll_freq / [even number]
> ##
> ##  The effective gpu_freq is automatically rounded to nearest even integ=
er, so
> ##  asking for core_freq =3D 500 and gpu_freq =3D 300 will result in divi=
sor of
> ##  2000/300 =3D 6.666 =3D> 6 and so 333.33MHz.
> ##
> ##
> ##  Standard Profiles:
> ##                  arm_freq    core_freq    sdram_freq    over_voltage
> ##     ------------------------------------------------------------------=
-------
> ##     None         700         250          400           0
> ##     Modest       800         300          400           0
> ##     Medium       900         333          450           2
> ##     High         950         450          450           6
> ##     Turbo        1000        500          500           6
> ##
> #########################################################################=
#######
>
> ## force_turbo
> ##     Control the kernel "ondemand" governor. It has no effect if no ove=
rclock
> ##     settings are specified.
> ##     May set warrany bit.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Enable dynamic clocks and voltage for the ARM core, GPU c=
ore and
> ##              SDRAM (Default).
> ##              Overclocking of h264_freq, v3d_freq and isp_freq is ignor=
ed.
> ##     1        Disable dynamic clocks and voltage for the ARM core, GPU =
core
> ##              and SDRAM.
> ##              Overclocking of h264_freq, v3d_freq and isp_freq is allow=
ed.
> ##
> #force_turbo=3D0
>
> ## initial_turbo
> ##     Enables turbo mode from boot for the given value in seconds (up to=
 60)
> ##     or until cpufreq sets a frequency. Can help with sdcard corruption=
 if
> ##     overclocked.
> ##
> ##     Default 0
> ##
> #initial_turbo=3D0
>
> ## temp_limit
> ##     Overheat protection. Sets clocks and voltages to default when the =
SoC
> ##     reaches this Celsius value.
> ##     Setting this higher than default voids warranty.
> ##
> ##     Default 85
> ##
> #temp_limit=3D85
>
> ## arm_freq
> ##     Frequency of ARM in MHz.
> ##
> ##     Default 700.
> ##
> #arm_freq=3D700
>
> ## arm_freq_min
> ##     Minimum frequency of ARM in MHz (used for dynamic clocking).
> ##
> ##     Default 700.
> ##
> #arm_freq_min=3D700
>
> ## gpu_freq
> ##     Sets core_freq, h264_freq, isp_freq, v3d_freq together.
> ##
> ##     Default 250.
> ##
> #gpu_freq=3D250
>
> ## core_freq
> ##     Frequency of GPU processor core in MHz. It has an impact on ARM
> ##     performance since it drives L2 cache.
> ##
> ##     Default 250.
> ##
> #core_freq=3D250
>
> ## core_freq_min
> ##     Minimum frequency of GPU processor core in MHz (used for dynamic
> ##     clocking). It has an impact on ARM performance since it drives L2 =
cache.
> ##
> ##     Default 250.
> ##
> #core_freq_min=3D250
>
> ## h264_freq
> ##     Frequency of hardware video block in MHz.
> ##
> ##     Default 250.
> ##
> #h264_freq=3D250
>
> ## isp_freq
> ##     Frequency of image sensor pipeline block in MHz.
> ##
> ##     Default 250.
> ##
> #isp_freq=3D250
>
> ## v3d_freq
> ##     Frequency of 3D block in MHz.
> ##
> ##     Default 250.
> ##
> #v3d_freq=3D250
>
> ## sdram_freq
> ##     Frequency of SDRAM in MHz.
> ##
> ##     Default 400.
> ##
> #sdram_freq=3D400
>
> ## sdram_freq_min
> ##     Minimum frequency of SDRAM in MHz (used for dynamic clocking).
> ##
> ##     Default 400.
> ##
> #sdram_freq_min=3D400
>
> ## avoid_pwm_pll
> ##     Don't dedicate a pll to PWM audio. This will reduce analogue audio
> ##     quality slightly. The spare PLL allows the core_freq to be set
> ##     independently from the rest of the gpu allowing more control over
> ##     overclocking.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     0        Linked core_freq (Default)
> ##     1        Unlinked core_freq
> ##
> #avoid_pwm_pll=3D1
>
> #########################################################################=
#######
> ##  Voltage Settings
> #########################################################################=
#######
>
> ## current_limit_override
> ##     Disables SMPS current limit protection. Can help if you are curren=
tly
> ##     hitting a reboot failure when overclocking too high.
> ##     May set warrany bit.
> ##
> #current_limit_override=3D0x5A000020
>
> ## over_voltage
> ##     ARM/GPU core voltage adjust.
> ##     May set warrany bit.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     -16      0.8   V
> ##     -15      0.825 V
> ##     -14      0.85  V
> ##     -13      0.875 V
> ##     -12      0.9   V
> ##     -11      0.925 V
> ##     -10      0.95  V
> ##     -9       0.975 V
> ##     -8       1.0   V
> ##     -7       1.025 V
> ##     -6       1.05  V
> ##     -5       1.075 V
> ##     -4       1.1   V
> ##     -3       1.125 V
> ##     -2       1.15  V
> ##     -1       1.175 V
> ##     0        1.2   V (Default)
> ##     1        1.225 V
> ##     2        1.25  V
> ##     3        1.275 V
> ##     4        1.3   V
> ##     5        1.325 V
> ##     6        1.35  V
> ##     7        1.375 V (requires force_turbo=3D1 or current_limit_overri=
de)
> ##     8        1.4   V (requires force_turbo=3D1 or current_limit_overri=
de)
> ##
> #over_voltage=3D0
>
> ## over_voltage_min
> ##     Minimum ARM/GPU core voltage adjust (used for dynamic clocking).
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     -16      0.8   V
> ##     -15      0.825 V
> ##     -14      0.85  V
> ##     -13      0.875 V
> ##     -12      0.9   V
> ##     -11      0.925 V
> ##     -10      0.95  V
> ##     -9       0.975 V
> ##     -8       1.0   V
> ##     -7       1.025 V
> ##     -6       1.05  V
> ##     -5       1.075 V
> ##     -4       1.1   V
> ##     -3       1.125 V
> ##     -2       1.15  V
> ##     -1       1.175 V
> ##     0        1.2   V (Default)
> ##     1        1.225 V
> ##     2        1.25  V
> ##     3        1.275 V
> ##     4        1.3   V
> ##     5        1.325 V
> ##     6        1.35  V
> ##     7        1.375 V (requires force_turbo=3D1)
> ##     8        1.4   V (requires force_turbo=3D1)
> ##
> #over_voltage_min=3D0
>
> ## over_voltage_sdram
> ##     Sets over_voltage_sdram_c, over_voltage_sdram_i, over_voltage_sdra=
m_p
> ##     together
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     -16      0.8   V
> ##     -15      0.825 V
> ##     -14      0.85  V
> ##     -13      0.875 V
> ##     -12      0.9   V
> ##     -11      0.925 V
> ##     -10      0.95  V
> ##     -9       0.975 V
> ##     -8       1.0   V
> ##     -7       1.025 V
> ##     -6       1.05  V
> ##     -5       1.075 V
> ##     -4       1.1   V
> ##     -3       1.125 V
> ##     -2       1.15  V
> ##     -1       1.175 V
> ##     0        1.2   V (Default)
> ##     1        1.225 V
> ##     2        1.25  V
> ##     3        1.275 V
> ##     4        1.3   V
> ##     5        1.325 V
> ##     6        1.35  V
> ##     7        1.375 V
> ##     8        1.4   V
> ##
> #over_voltage_sdram=3D0
>
> ## over_voltage_sdram_c
> ##     SDRAM controller voltage adjust.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     -16      0.8   V
> ##     -15      0.825 V
> ##     -14      0.85  V
> ##     -13      0.875 V
> ##     -12      0.9   V
> ##     -11      0.925 V
> ##     -10      0.95  V
> ##     -9       0.975 V
> ##     -8       1.0   V
> ##     -7       1.025 V
> ##     -6       1.05  V
> ##     -5       1.075 V
> ##     -4       1.1   V
> ##     -3       1.125 V
> ##     -2       1.15  V
> ##     -1       1.175 V
> ##     0        1.2   V (Default)
> ##     1        1.225 V
> ##     2        1.25  V
> ##     3        1.275 V
> ##     4        1.3   V
> ##     5        1.325 V
> ##     6        1.35  V
> ##     7        1.375 V
> ##     8        1.4   V
> ##
> #over_voltage_sdram_c=3D0
>
> ## over_voltage_sdram_i
> ##     SDRAM I/O voltage adjust.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     -16      0.8   V
> ##     -15      0.825 V
> ##     -14      0.85  V
> ##     -13      0.875 V
> ##     -12      0.9   V
> ##     -11      0.925 V
> ##     -10      0.95  V
> ##     -9       0.975 V
> ##     -8       1.0   V
> ##     -7       1.025 V
> ##     -6       1.05  V
> ##     -5       1.075 V
> ##     -4       1.1   V
> ##     -3       1.125 V
> ##     -2       1.15  V
> ##     -1       1.175 V
> ##     0        1.2   V (Default)
> ##     1        1.225 V
> ##     2        1.25  V
> ##     3        1.275 V
> ##     4        1.3   V
> ##     5        1.325 V
> ##     6        1.35  V
> ##     7        1.375 V
> ##     8        1.4   V
> ##
> #over_voltage_sdram_i=3D0
>
> ## over_voltage_sdram_p
> ##     SDRAM phy voltage adjust.
> ##
> ##     Value    Description
> ##     ------------------------------------------------------------------=
-------
> ##     -16      0.8   V
> ##     -15      0.825 V
> ##     -14      0.85  V
> ##     -13      0.875 V
> ##     -12      0.9   V
> ##     -11      0.925 V
> ##     -10      0.95  V
> ##     -9       0.975 V
> ##     -8       1.0   V
> ##     -7       1.025 V
> ##     -6       1.05  V
> ##     -5       1.075 V
> ##     -4       1.1   V
> ##     -3       1.125 V
> ##     -2       1.15  V
> ##     -1       1.175 V
> ##     0        1.2   V (Default)
> ##     1        1.225 V
> ##     2        1.25  V
> ##     3        1.275 V
> ##     4        1.3   V
> ##     5        1.325 V
> ##     6        1.35  V
> ##     7        1.375 V
> ##     8        1.4   V
> ##
> #over_voltage_sdram_p=3D0
>
> #########################################################################=
#######
> ##  USB Power
> #########################################################################=
#######
>
> ## max_usb_current
> ##     When set to 1, change the output current limit (for all 4 USB
> ##     ports combined) from 600mA to double that, 1200mA.
> ##
> ##     This option is not available for Model A/B boards.
> ##
> ##     Default 0.
> ##
> #max_usb_current=3D0
>
> #########################################################################=
#######
> ##  Base Device Tree Parameters
> #########################################################################=
#######
>
> ## audio
> ##     Enable the onboard ALSA audio
> ##
> ##     Default off.
> ##
> #dtparam=3Daudio=3Doff
>
> ## i2c_arm
> ##     Enable the ARM's i2c interface
> ##
> ##     Default off.
> ##
> #dtparam=3Di2c_arm=3Doff
>
> ## i2c_vc
> ##     Enable the i2c interface
> ##
> ##     Usually reserved for the VideoCore processor
> ##
> ##     Default off.
> ##
> #dtparam=3Di2c_vc=3Doff
>
> ## i2c_arm_baudrate
> ##     Set the baudrate of the ARM's i2c interface
> ##
> ##     Default 100000.
> ##
> #dtparam=3Di2c_arm_baudrate=3D100000
>
> ## i2c_vc_baudrate
> ##     Set the baudrate of the VideoCore i2c interface
> ##
> ##     Default 100000.
> ##
> #dtparam=3Di2c_vc_baudrate=3D100000
>
> ## i2s
> ##     Set to "on" to enable the i2s interface
> ##
> ##     Default off.
> ##
> #dtparam=3Di2s=3Doff
>
> ## spi
> ##     Set to "on" to enable the spi interfaces
> ##
> ##     Default off.
> ##
> #dtparam=3Dspi=3Doff
>
> ## random
> ##     Set to "on" to enable the hardware random
> ##
> ##     Default off.
> ##
> #dtparam=3Drandom=3Doff
>
> ## uart0
> ##     Set to "off" to disable uart0
> ##
> ##     Default on.
> ##
> #dtparam=3Duart0=3Don
>
> ## watchdog
> ##     Set to "on" to enable the hardware watchdog
> ##
> ##     Default off.
> ##
> #dtparam=3Dwatchdog=3Doff
>
> ## act_led_trigger
> ##     Choose which activity the LED tracks.
> ##
> ##     Use "heartbeat" for a nice load indicator.
> ##
> ##     Default mmc.
> ##
> #dtparam=3Dact_led_trigger=3Dmmc
>
> ## act_led_activelow
> ##     Set to "on" to invert the sense of the LED
> ##
> ##     Default off.
> ##
> #dtparam=3Dact_led_activelow=3Doff
>
> ## act_led_gpio
> ##     Set which GPIO to use for the activity LED
> ##
> ##     In case you want to connect it to an external device
> ##
> ##     Default 16 on a non-Plus board, 47 on a Plus or Pi 2.
> ##
> #dtparam=3Dact_led_gpio=3D47
>
> ## pwr_led_trigger
> ##     Choose which activity the LED tracks.
> ##
> ##     Use "heartbeat" for a nice load indicator.
> ##
> ##     Not available on Model A/B boards.
> ##
> ##     Default mmc.
> ##
> #dtparam=3Dpwr_led_trigger=3Dmmc
>
> ## pwr_led_activelow
> ##     Set to "on" to invert the sense of the LED
> ##
> ##     Not available on Model A/B boards.
> ##
> ##     Default off.
> ##
> #dtparam=3Dpwr_led_activelow=3Doff
>
> ## pwr_led_gpio
> ##     Set which GPIO to use for the PWR LED
> ##
> ##     In case you want to connect it to an external device
> ##
> ##     Not available on Model A/B boards.
> ##
> ##     Default 35.
> ##
> #dtparam=3Dpwr_led_gpio=3D35
> # Enable SPI bus
> dtparam=3Dspi=3Don
> # Enable UART
> enable_uart=3D1
> # Enable VC4 Graphics
> dtoverlay=3Dvc4-kms-v3d
> # Enable Sony RaspberryPi Camera(imx219)
> dtoverlay=3Dimx219
> # Enable USB host mode
> dtoverlay=3Ddwc2,dr_mode=3Dhost
> # Enable CAN
> dtoverlay=3Dmcp2515-can0,oscillator=3D16000000,interrupt=3D25
>
> # Enable WM8960
> dtoverlay=3Dwm8960-soundcard
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Any help will be appreciated!
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60529): https://lists.yoctoproject.org/g/yocto/messag=
e/60529
> Mute This Topic: https://lists.yoctoproject.org/mt/99985319/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

