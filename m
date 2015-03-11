Return-Path: <eddy.lai.tw@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E49FE00779; Wed, 11 Mar 2015 05:54:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddy.lai.tw[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABAC7E0076F
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 05:53:59 -0700 (PDT)
Received: by oiav1 with SMTP id v1so4246993oia.3
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 05:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=2BiLwY0rC0IyXzlJ6VwDGKuXZWT02VKi9qibiLCgdkQ=;
	b=QD40nSFvJdtxWY8h3k/u5kBJlN7pcIOxJ16Hn2VOGvWmE1P2LEXvM39jdLG8C7gPVL
	Ecu6h7zLYod1SNjP3ojtgCLQk9q92n4BnqsIyh0mu2XV1JbHsZ9S0yHWvRY7rvlDpuxI
	n5BLDGq5xOwYJz7/SgtmTM0X2rMNj1LIq14ad1zHfxQojejiI7KuLrQoiTGCpGj0Da+e
	XOD1CkGYhKJSPXixb5KoazX7/1OuLMjgg9ZTmuEJUdNzuQa9bTHNDmrW2clK8m0ln7Mc
	ukEXrynAKfBHt9F6FQYRqeVmEgF2L37C2qbTvRbhR2VZU8DcfRk/Vs1Sewj35EYsC0DT
	exnA==
MIME-Version: 1.0
X-Received: by 10.202.53.84 with SMTP id c81mr28077890oia.120.1426078438385;
	Wed, 11 Mar 2015 05:53:58 -0700 (PDT)
Received: by 10.76.4.173 with HTTP; Wed, 11 Mar 2015 05:53:58 -0700 (PDT)
Date: Wed, 11 Mar 2015 20:53:58 +0800
Message-ID: <CACrgodcY4+B0g8-Svn73=4=LmbqBp_wneDwPmMjxx7Vmu9z0ig@mail.gmail.com>
From: Lai Eddy <eddy.lai.tw@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: : compile open iscsi source from yocto target error cannot find -lc
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
X-List-Received-Date: Wed, 11 Mar 2015 12:54:03 -0000
Content-Type: multipart/alternative; boundary=001a113d6084bdef64051102c2eb

--001a113d6084bdef64051102c2eb
Content-Type: text/plain; charset=UTF-8

I have build a yocto 1.7.1 mohonpeak target, (with sdk)
and tried to build open-iscsi source code
(http://www.open-iscsi.org/bits/open-iscsi-2.0-873.tar.gz )
got error : x86_64-poky-linux/bin/ld: cannot find -lc
is there any library missed in my build?

----------------------------------------------------------------------------
cc -O2 -g -Wall -Wstrict-prototypes -I../include -I. -I../utils/open-isns
-DLinux -DNETLINK_ISCSI=8 -D_GNU_SOURCE -static iscsi_util.o io.o auth.o
iscsi_timer.o login.o log.o md5.o sha1.o iface.o idbm.o sysfs.o host.o
session_info.o iscsi_sysfs.o iscsi_net_util.o iscsid_req.o transport.o
iser.o cxgbi.o be2iscsi.o initiator_common.o iscsi_err.o netlink.o
../utils/sysdeps/sysdeps.o initiator.o scsi.o actor.o event_poll.o
mgmt_ipc.o kern_err_table.o ../utils/fwparam_ibft/fw_entry.o
../utils/fwparam_ibft/fwparam_ppc.o ../utils/fwparam_ibft/fwparam_sysfs.o
../utils/fwparam_ibft/prom_lex.o ../utils/fwparam_ibft/prom_parse.tab.o
iscsistart.o statics.o -o iscsistart
/usr/lib/gcc/x86_64-poky-linux/4.9.1/../../../../x86_64-poky-linux/bin/ld:
cannot find -lc
collect2: error: ld returned 1 exit status
Makefile:64: recipe for target 'iscsistart' failed
make[1]: *** [iscsistart] Error 1
make[1]: Leaving directory '/home/root/open-iscsi-2.0-873/usr'

--001a113d6084bdef64051102c2eb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I have build a yocto 1.7.1 mohonpeak target, (wi=
th sdk)<br></div>and tried to build open-iscsi source code <br>(<a href=3D"=
http://www.open-iscsi.org/bits/open-iscsi-2.0-873.tar.gz">http://www.open-i=
scsi.org/bits/open-iscsi-2.0-873.tar.gz</a> )<br></div>got error : x86_64-p=
oky-linux/bin/ld: cannot find -lc<br>is there any library missed in my buil=
d?<br><br>-----------------------------------------------------------------=
-----------<br>cc -O2 -g -Wall -Wstrict-prototypes -I../include -I. -I../ut=
ils/open-isns -DLinux -DNETLINK_ISCSI=3D8 -D_GNU_SOURCE -static iscsi_util.=
o io.o auth.o iscsi_timer.o login.o log.o md5.o sha1.o iface.o idbm.o sysfs=
.o host.o session_info.o iscsi_sysfs.o iscsi_net_util.o iscsid_req.o transp=
ort.o iser.o cxgbi.o be2iscsi.o initiator_common.o iscsi_err.o netlink.o ..=
/utils/sysdeps/sysdeps.o initiator.o scsi.o actor.o event_poll.o mgmt_ipc.o=
 kern_err_table.o ../utils/fwparam_ibft/fw_entry.o ../utils/fwparam_ibft/fw=
param_ppc.o ../utils/fwparam_ibft/fwparam_sysfs.o ../utils/fwparam_ibft/pro=
m_lex.o ../utils/fwparam_ibft/prom_parse.tab.o iscsistart.o statics.o -o is=
csistart<br>/usr/lib/gcc/x86_64-poky-linux/4.9.1/../../../../x86_64-poky-li=
nux/bin/ld: cannot find -lc<br>collect2: error: ld returned 1 exit status<b=
r>Makefile:64: recipe for target &#39;iscsistart&#39; failed<br>make[1]: **=
* [iscsistart] Error 1<br>make[1]: Leaving directory &#39;/home/root/open-i=
scsi-2.0-873/usr&#39;<br><br><br></div>

--001a113d6084bdef64051102c2eb--
