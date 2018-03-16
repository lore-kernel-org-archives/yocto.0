Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FFFEE00B52; Fri, 16 Mar 2018 09:48:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	T_DKIM_INVALID autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from cpanel4.indieserve.net (cpanel4.indieserve.net [199.212.143.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4196E00529
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 09:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=GpgiShaMwR77xwxjZrtVgdY0SZ1MsRVLCHJSUP2Nlqw=;
	b=en+9XtYkBhqeSL7bRzWPOuB62
	edh9m8ORdfDvSzQMjOTJ8JylDKMV3YlUsHZpYh38duhTZ01Ezsb0Cs9fDD+G7w8UHdhBzFZnRm4q6
	EA6wVdwPj0F5hwMANyHu+K4wvDlvf/8vsIZaDVSY9Z4Bg7gIpJqhUPm7pwSJpep+75319cgjbemOX
	TX3bWCoyWSAJbXlULDNvn3aChIrZi3jqUU9CZ7Zz90Ej6iPmZ0lbi7bXJCxzUBwPQp3rN/qqgJ60e
	7Cuk75ZLLwvCDHbgTYvbWAnXcxRtsGZZXjiL0IzatCd9HugRfkJIbNdlcUKa233bdQkvXRcelvrtX
	GcACbxngw==;
Received: from cpec03f0ed08c7f-cm68b6fcf980b0.cpe.net.cable.rogers.com
	([174.118.92.171]:36574 helo=localhost.localdomain)
	by cpanel4.indieserve.net with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89_1)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1ewsWs-0003Tm-Cb; Fri, 16 Mar 2018 12:48:31 -0400
Date: Fri, 16 Mar 2018 12:48:28 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0La_Tkj=m89nrGa7KJuDPAV+e358t39VG81hC8nZ-ncR5w@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.1803161247560.5800@localhost.localdomain>
References: <CAFzUWGmEjhu4-5vnzc_GLRV++KYSr4SAi2-TbhK+G-V3e-aPzg@mail.gmail.com>
	<CAJTo0La_Tkj=m89nrGa7KJuDPAV+e358t39VG81hC8nZ-ncR5w@mail.gmail.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel4.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel4.indieserve.net: authenticated_id:
	rpjday+crashcourse.ca/only user confirmed/virtual account not
	confirmed
X-Authenticated-Sender: cpanel4.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Can SRC_URI look in the same place for two different machines?
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
X-List-Received-Date: Fri, 16 Mar 2018 16:48:35 -0000
Content-Type: multipart/mixed; boundary="8323328-1267119325-1521218911=:5800"

--8323328-1267119325-1521218911=:5800
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Fri, 16 Mar 2018, Burton, Ross wrote:

> On 15 March 2018 at 14:07, Giordon Stark <kratsg@gmail.com> wrote:
>       So for my device trees, I'm finding some files are duplicated. In particular some of my
>       dtsi files are going to be the same amongst a few boards we're using, so I would like
>       to have each machine name distinct so that 
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>
> files/${MACHINE}/${MACHINE}.dts
>
> is picked up, while still having
>
> files/common/*.dtsi picked up as well. As an example of my SRC_URI appends:
>
> SRC_URI_append_gfex-prototype1b = " \
>     file://skeleton.dtsi  \
>     file://pl.dtsi        \
>     file://zynq-7000.dtsi \
>     file://system.dts     \
> "
>
> SRC_URI_append_gfex-prototype2  = " \
>     file://skeleton.dtsi   \
>     file://pl.dtsi         \
>     file://zynq-7000.dtsi  \
>     file://system.dts      \
> "
>
> I suspect I do something with OVERRIDES in the
> conf/machine/${MACHINE}.conf file but not sure...
>
>
> Can't you just put common files in files/file.dtsi and then the
> machine-specific ones in files/[machine]/?

  isn't this precisely what MACHINEOVERRIDES is for?

rday

--8323328-1267119325-1521218911=:5800--
