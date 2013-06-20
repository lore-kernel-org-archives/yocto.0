Return-Path: <Mikhail_Durnev@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D96EFE01400
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 21:17:30 -0700 (PDT)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1UpWJK-0000UB-7V from Mikhail_Durnev@mentor.com ;
	Wed, 19 Jun 2013 21:17:26 -0700
Received: from SVR-ORW-FEM-05.mgc.mentorg.com ([147.34.97.43]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Wed, 19 Jun 2013 21:17:26 -0700
Received: from mdurnev (147.34.91.1) by svr-orw-fem-05.mgc.mentorg.com
	(147.34.97.43) with Microsoft SMTP Server id 14.2.247.3;
	Wed, 19 Jun 2013 21:17:24 -0700
From: Mikhail Durnev <Mikhail_Durnev@mentor.com>
To: 'Khem Raj' <raj.khem@gmail.com>, "'Noor, Ahsan'" <noor_ahsan@mentor.com>
References: <1371639211-3726-1-git-send-email-noor_ahsan@mentor.com>
	<746BB1A1-A592-4FFB-9A3F-B9D6C904451A@gmail.com>
In-Reply-To: <746BB1A1-A592-4FFB-9A3F-B9D6C904451A@gmail.com>
Date: Thu, 20 Jun 2013 15:17:03 +1100
Message-ID: <119b01ce6d6d$06c6ae70$14540b50$@com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: Ac5tXkwDZPSPGnqMQweCCFHq6+z+TAADGUig
X-OriginalArrivalTime: 20 Jun 2013 04:17:26.0169 (UTC)
	FILETIME=[1207D890:01CE6D6D]
X-Mailman-Approved-At: Thu, 20 Jun 2013 08:13:37 -0700
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] ecryptfs-utils: Modify systemd service file to 'simple'.
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
X-List-Received-Date: Thu, 20 Jun 2013 04:17:31 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us

ecryptfsd is a resident program, i.e. daemon. According to systemd
documentation, Type=oneshot/RemainAfterExit=yes should be used for programs
that do not remain working after exit. But for daemons we should use
Type=forked to indicate that the service remains running in background.
ecryptfs provides option -f to run in foreground. This option is preferred
when the service is started from init/systemd. That is why we use
Type=simple (default) to indicate that the service runs in foreground. To
manage the service properly systemd uses its type. E.g. if ecryptfsd
silently dies, systemd will recognize its failure in case of simple or
forked, but not in case of oneshot.

Best regards,
Mikhail

-----Original Message-----
From: Khem Raj [mailto:raj.khem@gmail.com] 
Sent: Thursday, 20 June, 2013 13:32
To: Noor, Ahsan
Cc: holger.behrens@windriver.com; florin.sarbu@windriver.com;
yocto@yoctoproject.org; Mikhail Durnev
Subject: Re: [yocto] [PATCH] ecryptfs-utils: Modify systemd service file to
'simple'.

reasoning why it is being turned into simple service would be nice

On Jun 19, 2013, at 3:53 AM, "Noor, Ahsan" <noor_ahsan@mentor.com> wrote:

> From: Noor <noor_ahsan@mentor.com>
> 
> Signed-off-by: Mikhail Durnev <mikhail_durnev@mentor.com>
> Signed-off-by: Noor Ahsan <noor_ahsan@mentor.com>
> ---
> .../ecryptfs-utils/ecryptfs-utils/ecryptfs.service |    4 +---
> 1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git 
> a/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils/ecryptfs.service 
> b/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils/ecryptfs.service
> index ba12aa3..52f3397 100644
> --- 
> a/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils/ecryptfs.service
> +++ b/recipes-support-ivi/ecryptfs-utils/ecryptfs-utils/ecryptfs.servi
> +++ ce
> @@ -3,9 +3,7 @@ Description=A userspace daemon that runs as the user 
> perform file operations und After=udev.service
> 
> [Service]
> -Type=oneshot
> -ExecStart=/usr/bin/ecryptfsd
> -RemainAfterExit=yes
> +ExecStart=/usr/bin/ecryptfsd -f
> 
> [Install]
> WantedBy=multi-user.target
> --
> 1.7.9.5
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto




