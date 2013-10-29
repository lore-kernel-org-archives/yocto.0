Return-Path: <soniaverma9727@gmail.com>
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E366E0175D
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 00:03:06 -0700 (PDT)
Received: by mail-wi0-f179.google.com with SMTP id hm4so4865157wib.12
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 00:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=3xAv8xw9szOXRJucmZECV2Eq+LMAzR8tcvUUP6tFiWc=;
	b=JYYhdbcO/9+Cr7xq89ZzEraA7q3OvluxpvFmUKLoLFsaHucNZbMmggqZEkfV9gjb1K
	IUgvHHvbaQgwYq56NPS8GoQ+IQGWs3elviOfkXEf+TlYGkP2c4f7/cKc2egP/JrJcyCg
	ym8dqtAa2zT3oDXtTI6JOPOMf/1F3nh0pt8O+Rh2wJ+9Wl//bZLd6/Ps7s5pRw8LsRHY
	9vjwAZKhKqlWJY8Itey2u/x/mcPmMnVDWFONQEf9JC+yExbYtBD2iit8/rddS7C9ARdy
	jaA71PiFkP9QH/SFfY/LIqomPOlz4JbSqDu7jvc62jVLxbOJXTcXl9yg3qAxLkdqCdTF
	mqZA==
MIME-Version: 1.0
X-Received: by 10.180.90.46 with SMTP id bt14mr459418wib.50.1383030184887;
	Tue, 29 Oct 2013 00:03:04 -0700 (PDT)
Received: by 10.194.9.193 with HTTP; Tue, 29 Oct 2013 00:03:04 -0700 (PDT)
Date: Tue, 29 Oct 2013 12:33:04 +0530
Message-ID: <CAJ7VayhLzFEDns3=buP+gpi3jPHXju=B856Sg6uQksAdzDvoDw@mail.gmail.com>
From: sonia verma <soniaverma9727@gmail.com>
To: yocto@yoctoproject.org
Subject: Openvswitch integration in yocto
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
X-List-Received-Date: Tue, 29 Oct 2013 07:03:10 -0000
Content-Type: multipart/alternative; boundary=f46d043c81dee24a9804e9dbce17

--f46d043c81dee24a9804e9dbce17
Content-Type: text/plain; charset=ISO-8859-1

Hi All,

i am new to yocto environment. i want to build openvswitch in yocto_1.4.

The openvswitch is path :
*QorIQ-SDK-V1.4-20130814-yocto/meta-virtualization/recipes-networking/openvswitch.

*

For compiling openvswitch i perform following steps:-

   1.  bitbake -f -c compile openvswitch.
   2.  bitbake openvswitch.
   3.  bitbake fsl-image-core.

but when i get fsl-image-core-t4240rdb-20131028123337.rootfs.ext2.gz.u-boot
 & boot the board with uImage & above file system i did not find any
openvswitch utilities. can you please guide me to how to integrate
openvswitch in yocto.

looking for the positive response

-------
Regards
Sonia

--f46d043c81dee24a9804e9dbce17
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div class=3D""><img class=3D"" id=3D":9q" src=
=3D"https://mail.google.com/mail/images/cleardot.gif" alt=3D""></div><div><=
div><div><div><div><div>Hi All,<br><br></div>i am new to yocto environment.=
 i want to build openvswitch in yocto_1.4.<br>
<br></div>The openvswitch is path : <b>QorIQ-SDK-V1.4-20130814-yocto/meta-v=
irtualization/recipes-networking/openvswitch. <br>
</b></div><br></div>For compiling openvswitch i perform following steps:-<b=
r></div><ol><li>=A0bitbake -f -c compile openvswitch.</li><li>=A0bitbake op=
envswitch.</li><li>=A0bitbake fsl-image-core.</li></ol></div><div>but when =
i get fsl-image-core-t4240rdb-20131028123337.rootfs.ext2.gz.u-boot<br>

</div><div>=A0&amp; boot the board with uImage &amp; above file system i=20
did not find any openvswitch utilities. can you please guide me to how=20
to integrate openvswitch in yocto.<br><br></div>looking for the positive re=
sponse<br>
<br>-------<br></div>Regards<br></div>Sonia<br></div>

--f46d043c81dee24a9804e9dbce17--
