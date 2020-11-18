Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
 by mx.groups.io with SMTP id smtpd.web08.5367.1605961120122441278
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Nov 2020 04:18:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lists.yoctoproject.org header.s=20140610 header.b=eYF9u0F3;
 spf=softfail (domain: lists.yoctoproject.org, ip: 92.39.20.236, mailfrom: yocto@lists.yoctoproject.org)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Fri, 20 Nov 2020 11:07:45 +0000
X-Sender: bounce+53643+51494+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 6088
X-Received: by 127.0.0.2 with SMTP id akubYY3619394xlWNVKt7fLj; Fri, 20 Nov 2020 03:07:21 -0800
X-Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
 by mx.groups.io with SMTP id smtpd.web09.13413.1605809679736332773
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 10:14:40 -0800
X-Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Wed, 18 Nov 2020 14:33:37 +0000
X-Sender: bounce+53643+51421+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 5187
X-Received: by 127.0.0.2 with SMTP id DoGSYY3619394xYNJq312a2d; Wed, 18 Nov 2020 06:31:28 -0800
Subject: [yocto] loading huawei_cdc_ncm #kernel
To: yocto@lists.yoctoproject.org
From: "Zoltan Kerenyi Nagy" <kerenyi.nagy.zoltan@gmail.com>
X-Originating-Location: Kiskunhalas, Bács-Kiskun, HU (84.1.252.39)
X-Originating-Platform: Linux Firefox 73
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 18 Nov 2020 04:10:52 -0800
X-OldMsgId: <WtZt.1605701452642310356.FF7i@lists.yoctoproject.org>
X-Gm-Message-State: HPiCBONO39Mb7krIYu3yLqOOx3618059AA=
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of
 yocto@lists.yoctoproject.org designates 66.175.222.12 as permitted sender)
 receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
Received-SPF: Pass (Exchange.sewerin.de: domain of yocto@lists.yoctoproject.org designates 66.175.222.12
 as permitted sender) receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
X-OldMsgId: <8be714f70fc4472f88c17161a4a9dfa2@Exchange.sewerin.de>
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=lists.yoctoproject.org; q=dns/txt; s=20140610; t=1605870441;
 bh=+rJZgjG1VVrp2mh8JvDUMy8xRXdaW5yglZWjAB/LsIc=;
 h=Content-Type:Date:From:Subject:To;
 b=eYF9u0F3sPW+yNCpCwbdD2SrUoGoXOscrSHq9aH0HA7htALBrD3O2I29FVABuHuHa/l
 DQpgqBkbR5Qub5//1F6HrrwXi/WHDGdb1miCFmwZXJCsK2wipUZwDhPQziji/Dd0Uzt/I
 QgEKT13SKKA5ZSK1HdlUsSFLYhUl/h7zqfE=
Return-Path: bounce+53643+51494+3618059+6691491@lists.yoctoproject.org
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Message-ID: <6936c53d58ec49098fba9bf17392d095@Exchange.sewerin.de>
Content-Type: multipart/mixed; boundary="LnhuPJ98FBI0z1sHywuQ"

--LnhuPJ98FBI0z1sHywuQ
Content-Type: multipart/alternative; boundary="Lk5JyBdpiUiM6t2L0kdw"

--Lk5JyBdpiUiM6t2L0kdw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {B95C7DDA-C129-42DF-B56C-FDB87FD86CE0}

Hi,

I'd li to include as a kernel module the huawei_cdc_ncm.c file and autoloa=
ded as a kernel object.

I did this in the main recipie file, but it's not enogh:

KERNEL_MODULE_AUTOLOAD +=3D "cdc_ncm.ko"

I guess I should have a bb file for the huawei_cdc_ncm.c, but I didnt find=
 any on the net.
Could you please help me?

Thanks

Zolee







--Lk5JyBdpiUiM6t2L0kdw
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {F7D4C614-9E1B-4BE6-AEC8-270BA71ABCA0}

Hi,<br><br>I'd li to include as a kernel module the huawei_cdc_ncm.c file an=
d autoloaded as a kernel object.<br><br>I did this in the main recipie file,=
 but it's not enogh:<br><br>KERNEL_MODULE_AUTOLOAD +=3D "cdc_ncm.ko"<br><br>=
I guess I should have a bb file for the huawei_cdc_ncm.c, but I didnt find a=
ny on the net.<br>Could you please help me?<br><br>Thanks<br><br>Zolee

--Lk5JyBdpiUiM6t2L0kdw--

--LnhuPJ98FBI0z1sHywuQ--
