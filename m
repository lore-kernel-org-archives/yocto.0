Return-Path: <michel.dhooge@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F544E00C17; Thu, 24 Nov 2016 02:22:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (michel.dhooge[at]free.fr)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.27.42.2 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp2-g21.free.fr (smtp2-g21.free.fr [212.27.42.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EB36E00874
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 02:22:27 -0800 (PST)
Received: from spooler3-g27.priv.proxad.net (unknown [172.20.243.239])
	by smtp2-g21.free.fr (Postfix) with ESMTP id 79C9B200403
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 11:22:26 +0100 (CET)
Date: Thu, 24 Nov 2016 11:22:26 +0100 (CET)
From: Michel D'HOOGE <michel.dhooge@free.fr>
To: yocto@yoctoproject.org
Message-ID: <483062628.361987886.1479982946334.JavaMail.root@spooler3-g27.priv.proxad.net>
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3E7F65EC@AZ-FFEXMB01.global.avaya.com>
MIME-Version: 1.0
X-Originating-IP: [82.233.24.66]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - GC53 (Linux)/7.2.0-GA2598)
X-Authenticated-User: michel.dhooge@free.fr
Subject: Re: How to add user with nologin shell
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
X-List-Received-Date: Thu, 24 Nov 2016 10:22:29 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,=20

> From: "Abhinav Bipnesh (Abhinav)" <abhinavbipnesh@avaya.com>
> Sent: Thursday, 24 November, 2016 11:05:59 AM

> I am trying to add an user to image with /sbin/nologin but it fails
> with below error


> ERROR: Function failed: set_user_group (log file is located at
> /home/abhinav/bitbake/=E2=80=A6/test-image/1.0-r0/temp/log.do_rootfs.5472=
5)

The problem seems to be with the group.
According to my man page, the group must already exist.

> I am using below section in my recipe to achieve it
> EXTRA_USERS_PARAMS =3D =E2=80=9Cuseradd -M -g user1 user1 -r -s /sbin/nol=
ogin;=E2=80=9D

Why don't you use the -U flag?

Michel

