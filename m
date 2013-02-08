Return-Path: <Javier.Viguera@digi.com>
Received: from mail1.bemta7.messagelabs.com (mail4.bemta7.messagelabs.com
	[216.82.255.53])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 4B487E00724
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 09:04:21 -0800 (PST)
Received: from [216.82.254.211:6295] by server-9.bemta-7.messagelabs.com id
	7E/BD-13815-41035115; Fri, 08 Feb 2013 17:04:20 +0000
X-Env-Sender: Javier.Viguera@digi.com
X-Msg-Ref: server-8.tower-201.messagelabs.com!1360343059!9144766!1
X-Originating-IP: [66.77.174.13]
X-StarScan-Received: 
X-StarScan-Version: 6.7; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 12050 invoked from network); 8 Feb 2013 17:04:19 -0000
Received: from mail.mx1.digi.com (HELO mcl-sms-ns1.digi.com) (66.77.174.13)
	by server-8.tower-201.messagelabs.com with RC4-SHA encrypted SMTP;
	8 Feb 2013 17:04:19 -0000
Received: from mcl-sms-exch01.digi.com (10.5.8.50) by mail.mx1.digi.com
	(172.16.1.13) with Microsoft SMTP Server (TLS) id 8.3.297.1;
	Fri, 8 Feb 2013 11:04:12 -0600
Received: from dor-sms-exch01.digi.com (10.49.8.100) by
	mcl-sms-exch01.digi.com (10.5.8.50) with Microsoft SMTP Server (TLS) id
	8.3.297.1; Fri, 8 Feb 2013 11:04:19 -0600
Received: from [10.101.1.79] (10.101.1.79) by dor-sms-exch01.digi.com
	(10.49.8.100) with Microsoft SMTP Server (TLS) id 8.3.297.1;
	Fri, 8 Feb 2013 18:04:16 +0100
Message-ID: <5115300E.50901@digi.com>
Date: Fri, 8 Feb 2013 18:04:14 +0100
From: Javier Viguera <javier.viguera@digi.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <5112797E.9010504@digi.com>
	<CAJTo0LYeNK8eEVX5_GV_s9AC40o9cbXdsEHh_M1h8-ZEhqBF-Q@mail.gmail.com>
In-Reply-To: <CAJTo0LYeNK8eEVX5_GV_s9AC40o9cbXdsEHh_M1h8-ZEhqBF-Q@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: systemtap fetch failure on 'danny' (cherry-pick fix from master)
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
X-List-Received-Date: Fri, 08 Feb 2013 17:04:21 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 02/06/2013 04:48 PM, Burton, Ross wrote:
> You'll be pleased to know it's in danny-next already, so should be
> hitting danny in the next day or so.

Is that 'danny-next' branch private?

I can't see it in the gitweb or in a local clone.

# git branch -a | grep danny-next

shows nothing.

<http://git.yoctoproject.org/cgit/cgit.cgi/poky/refs/heads>


-- 
Javier Viguera
Software Engineer
Digi International® Spain S.A.U.

