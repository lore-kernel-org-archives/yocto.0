Return-Path: <Javier.Viguera@digi.com>
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 008D9E00527
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2013 07:40:58 -0800 (PST)
Received: from [216.82.241.196:9705] by server-11.bemta-8.messagelabs.com id
	61/40-04159-98972115; Wed, 06 Feb 2013 15:40:57 +0000
X-Env-Sender: Javier.Viguera@digi.com
X-Msg-Ref: server-10.tower-46.messagelabs.com!1360165255!30426976!1
X-Originating-IP: [66.77.174.14]
X-StarScan-Received: 
X-StarScan-Version: 6.7; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 22184 invoked from network); 6 Feb 2013 15:40:55 -0000
Received: from mail.mx2.digi.com (HELO mcl-sms-ns2.DIGI.COM) (66.77.174.14)
	by server-10.tower-46.messagelabs.com with RC4-SHA encrypted SMTP;
	6 Feb 2013 15:40:55 -0000
Received: from mcl-sms-exch01.digi.com (10.5.8.50) by mail.mx2.digi.com
	(172.16.1.14) with Microsoft SMTP Server (TLS) id 8.3.297.1;
	Wed, 6 Feb 2013 09:41:06 -0600
Received: from dor-sms-exch01.digi.com (10.49.8.100) by
	mcl-sms-exch01.digi.com (10.5.8.50) with Microsoft SMTP Server (TLS) id
	8.3.297.1; Wed, 6 Feb 2013 09:40:54 -0600
Received: from [10.101.1.79] (10.101.1.79) by dor-sms-exch01.digi.com
	(10.49.8.100) with Microsoft SMTP Server (TLS) id 8.3.297.1;
	Wed, 6 Feb 2013 16:40:52 +0100
Message-ID: <5112797E.9010504@digi.com>
Date: Wed, 6 Feb 2013 16:40:46 +0100
From: Javier Viguera <javier.viguera@digi.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
Subject: systemtap fetch failure on 'danny' (cherry-pick fix from master)
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
X-List-Received-Date: Wed, 06 Feb 2013 15:40:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

Hi all,

Using 'danny' branch to build a rootfs image i sometimes get a 
'systemtap' fetch failure:

> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
> Cloning into bare repository '.../downloads/git2/sources.redhat.com.git.systemtap.git'...
>
> fatal: unable to connect to sources.redhat.com:
> sources.redhat.com[0: 209.132.183.64]: errno=Connection timed out

This seems to be fixed in 'master' branch:

commit f3f4ac33ee7fa9cd35d06821fc3e26077303998a
Author: Maxin B. John <Maxin.John@enea.com>
Date:   Fri Dec 14 13:00:28 2012 +0100

     Update the SRC_URI in systemtap recipe


Could that commit be cherry-picked to 'danny'?

It doesn't seem to be very dangerous as it's only a SRC_URI change.

-
Javier Viguera
Software Engineer
Digi International® Spain S.A.U.

