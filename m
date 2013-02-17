Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f181.google.com (mail-we0-f181.google.com
	[74.125.82.181]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 56E47E0144A
	for <yocto@yoctoproject.org>; Sun, 17 Feb 2013 13:22:50 -0800 (PST)
Received: by mail-we0-f181.google.com with SMTP id t44so4171482wey.12
	for <yocto@yoctoproject.org>; Sun, 17 Feb 2013 13:22:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=3H1h4ar/QUIShyEqRcpS0Yy/ItuesSf+WmRnldqE/dw=;
	b=hS54G2iR9Ibs8faAkU3g5VKCx5j+uTrjcavk/KgPI04dPJIqRZyZ23ORL9WcLfD4/A
	auLAEXRigkIII2W5cKfXHa4ABfwloykIZJbNWIo8BeRYJqyhNdVOv3jtH2Z2QS+OipIY
	jxa8lOo0PlhDdaIEN+ByqLojgyMQ/0FqE4Nc1tr2IM//WnsEsHF5C9CywS+a3ov5Szwl
	rbCMlfOEcWyh0RzvDAzNyZEwVMIgOd8pAAuJuqOaos8XzWq1NJjYTSq2IApxgQbQpQ/F
	BN78OhkmPavd2xH8pxXTSKIbdvINlnx/cupWW0l1kiQYMmMfDs+dNegT2WL3V903R576
	5xwA==
MIME-Version: 1.0
X-Received: by 10.194.58.202 with SMTP id t10mr6672562wjq.4.1361136168332;
	Sun, 17 Feb 2013 13:22:48 -0800 (PST)
Received: by 10.194.36.228 with HTTP; Sun, 17 Feb 2013 13:22:48 -0800 (PST)
Date: Sun, 17 Feb 2013 16:22:48 -0500
Message-ID: <CAHUNapQTq1wsLtJ94dH9n8W40gi4hYwbsLDRDyAZBMtiT5jvQA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: kernel menuconfig unusable Was: Updated Yocto Hands-on Kernel Lab available
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 17 Feb 2013 21:22:50 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Feb 15, 2013 at 9:29 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> I'm happy to announce that an updated version of the Yocto 'Hands-on
> Kernel Lab' has been released and is available here:

This is awesome, and much appreciated (especially by those of us who
can't make it out to these events).

Following the lab, however, I very quickly ran into the dreaded
"kernel menuconfig unusable" issue. Is there any way Liang Li's
suggested fix[1] could make it into mainline and the danny branch
which is used for these labs? Is there a better fix? Is there another
way around this issue, perhaps with a pure conf/local.conf setting?

Thanks and best regards,
    Trevor

[1] http://lists.linuxtogo.org/pipermail/openembedded-core/2012-August/027130.html

NOTE: simply setting OE_TERMINAL to "xterm" doesn't fix the problem,
it only changes the terminal :-)

