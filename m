Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92E30E00754; Wed, 11 Mar 2015 09:25:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59B0BE0034E
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 09:25:17 -0700 (PDT)
Received: by paceu11 with SMTP id eu11so12639310pac.4
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 09:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=hHZbdMbsqszIM36w4ggRaSiFeSLRFChcyb22+Hd5C1c=;
	b=JYY7YQ7EckR5JAd5FNV4v1TbT36E12XSUEdp16EzMshBKsgV1pMbfO0y4HC6naUIQ8
	pPNpst0Wwd2sJArmCCka/8KBGyQrELrL5o8lcz54uiu4rl+OlIOalHhaFLJKUPXqE+ZC
	2LBlvYPNPLQmDeCZTwiOYEccwm0e3wJGFfXjAPLkZikr3lpFaiAOPshp4TE74C9vu2Py
	bwzCIJtrVbVq2dlCjkfw+IjwtefPIhFmBdTPVzBns7tF8trX/MmbCRa7yFTVJgFmoDB+
	iqfSwssjM/Ef3t6hXYA+N22QtAVgCqamagOJrE70kVFTyvW8vKeOwVreGawoQ0Xh4Wwn
	j/xg==
X-Received: by 10.70.18.36 with SMTP id t4mr80844116pdd.66.1426091116839;
	Wed, 11 Mar 2015 09:25:16 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:6588:5f61:c664:8bb4?
	([2601:9:3580:84c:6588:5f61:c664:8bb4])
	by mx.google.com with ESMTPSA id k2sm6754691pdm.64.2015.03.11.09.25.15
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 11 Mar 2015 09:25:15 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CACrgodcY4+B0g8-Svn73=4=LmbqBp_wneDwPmMjxx7Vmu9z0ig@mail.gmail.com>
Date: Wed, 11 Mar 2015 09:25:14 -0700
Message-Id: <D3DB64A6-FF6D-4CE3-AE62-07EF87922BC3@gmail.com>
References: <CACrgodcY4+B0g8-Svn73=4=LmbqBp_wneDwPmMjxx7Vmu9z0ig@mail.gmail.com>
To: Lai Eddy <eddy.lai.tw@gmail.com>
X-Mailer: Apple Mail (2.2070.6)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: : compile open iscsi source from yocto target error cannot find -lc
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
X-List-Received-Date: Wed, 11 Mar 2015 16:25:20 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_821745E1-74CC-4ABD-A995-FB0771F712C9"

--Apple-Mail=_821745E1-74CC-4ABD-A995-FB0771F712C9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Mar 11, 2015, at 5:53 AM, Lai Eddy <eddy.lai.tw@gmail.com> wrote:
>=20
> I have build a yocto 1.7.1 mohonpeak target, (with sdk)
> and tried to build open-iscsi source code=20
> (http://www.open-iscsi.org/bits/open-iscsi-2.0-873.tar.gz =
<http://www.open-iscsi.org/bits/open-iscsi-2.0-873.tar.gz> )
> got error : x86_64-poky-linux/bin/ld: cannot find -lc
> is there any library missed in my build?
>=20
> =
--------------------------------------------------------------------------=
--
> cc -O2 -g -Wall -Wstrict-prototypes -I../include -I. =
-I../utils/open-isns -DLinux -DNETLINK_ISCSI=3D8 -D_GNU_SOURCE -static =
iscsi_util.o io.o auth.o iscsi_timer.o login.o log.o md5.o sha1.o =
iface.o idbm.o sysfs.o host.o session_info.o iscsi_sysfs.o =
iscsi_net_util.o iscsid_req.o transport.o iser.o cxgbi.o be2iscsi.o =
initiator_common.o iscsi_err.o netlink.o ../utils/sysdeps/sysdeps.o =
initiator.o scsi.o actor.o event_poll.o mgmt_ipc.o kern_err_table.o =
../utils/fwparam_ibft/fw_entry.o ../utils/fwparam_ibft/fwparam_ppc.o =
../utils/fwparam_ibft/fwparam_sysfs.o ../utils/fwparam_ibft/prom_lex.o =
../utils/fwparam_ibft/prom_parse.tab.o iscsistart.o statics.o -o =
iscsistart
> =
/usr/lib/gcc/x86_64-poky-linux/4.9.1/../../../../x86_64-poky-linux/bin/ld:=
 cannot find -lc


are you using ADT to build it ? if yes then please source the =
environment script before you build. particularly you are missing =
=E2=80=94sysroot option on compiler/linker cmdline

> collect2: error: ld returned 1 exit status
> Makefile:64: recipe for target 'iscsistart' failed
> make[1]: *** [iscsistart] Error 1
> make[1]: Leaving directory '/home/root/open-iscsi-2.0-873/usr'
>=20
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_821745E1-74CC-4ABD-A995-FB0771F712C9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Mar 11, 2015, at 5:53 AM, Lai Eddy &lt;<a =
href=3D"mailto:eddy.lai.tw@gmail.com" =
class=3D"">eddy.lai.tw@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D""><div class=3D"">I have build a yocto 1.7.1 =
mohonpeak target, (with sdk)<br class=3D""></div>and tried to build =
open-iscsi source code <br class=3D"">(<a =
href=3D"http://www.open-iscsi.org/bits/open-iscsi-2.0-873.tar.gz" =
class=3D"">http://www.open-iscsi.org/bits/open-iscsi-2.0-873.tar.gz</a> =
)<br class=3D""></div>got error : x86_64-poky-linux/bin/ld: cannot find =
-lc<br class=3D"">is there any library missed in my build?<br =
class=3D""><br =
class=3D"">---------------------------------------------------------------=
-------------<br class=3D"">cc -O2 -g -Wall -Wstrict-prototypes =
-I../include -I. -I../utils/open-isns -DLinux -DNETLINK_ISCSI=3D8 =
-D_GNU_SOURCE -static iscsi_util.o io.o auth.o iscsi_timer.o login.o =
log.o md5.o sha1.o iface.o idbm.o sysfs.o host.o session_info.o =
iscsi_sysfs.o iscsi_net_util.o iscsid_req.o transport.o iser.o cxgbi.o =
be2iscsi.o initiator_common.o iscsi_err.o netlink.o =
../utils/sysdeps/sysdeps.o initiator.o scsi.o actor.o event_poll.o =
mgmt_ipc.o kern_err_table.o ../utils/fwparam_ibft/fw_entry.o =
../utils/fwparam_ibft/fwparam_ppc.o =
../utils/fwparam_ibft/fwparam_sysfs.o ../utils/fwparam_ibft/prom_lex.o =
../utils/fwparam_ibft/prom_parse.tab.o iscsistart.o statics.o -o =
iscsistart<br =
class=3D"">/usr/lib/gcc/x86_64-poky-linux/4.9.1/../../../../x86_64-poky-li=
nux/bin/ld: cannot find -lc<br =
class=3D""></div></div></blockquote><div><br class=3D""></div><div><br =
class=3D""></div><div>are you using ADT to build it ? if yes then please =
source the environment script before you build. particularly you are =
missing =E2=80=94sysroot option on compiler/linker cmdline</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
dir=3D"ltr" class=3D"">collect2: error: ld returned 1 exit status<br =
class=3D"">Makefile:64: recipe for target 'iscsistart' failed<br =
class=3D"">make[1]: *** [iscsistart] Error 1<br class=3D"">make[1]: =
Leaving directory '/home/root/open-iscsi-2.0-873/usr'<br class=3D""><br =
class=3D""><br class=3D""></div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_821745E1-74CC-4ABD-A995-FB0771F712C9--
