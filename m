Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD899E01508
	for <yocto@yoctoproject.org>; Sat, 21 Sep 2013 01:29:36 -0700 (PDT)
Received: from [127.0.0.1] (cpc16-live22-2-0-cust180.know.cable.virginmedia.com
	[82.42.220.181])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id D1C338610D;
	Sat, 21 Sep 2013 08:29:33 +0000 (UTC)
Message-ID: <523D5964.5020501@dynamicdevices.co.uk>
Date: Sat, 21 Sep 2013 09:31:32 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.2; WOW64;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.00.1309201728360.21975@magellan.rkirkpat.net>
In-Reply-To: <alpine.DEB.2.00.1309201728360.21975@magellan.rkirkpat.net>
Subject: [meta-mono] Xaramarin no longer providing mono-tools
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
X-List-Received-Date: Sat, 21 Sep 2013 08:29:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'm about to start testing the meta-mono layer with Yocto on the 
Freescale i.MX6 Sabre board.

I'll feed-back my results testing some simple command line and Windows 
Forms applications
for the readme, assuming this hasn't already been done.

As I setup for this I see that Xamarin are no longer providing 
mono-tools, which is unfortunate
as I can't see a way to develop and debug within Visual Studio, whilst 
targetting a an application
running on Mono/Embedded Linux. Their replacement "Xamarin Studio" seems 
to be targetted
at Android and iOS only.

Is anybody aware of a way to develop/debug on Mono/Yocto with Visual 
Studio with the new
Xamarin plugin?

If not, does anybody happen to have an archived copy of the Mono Tools 
plugin they could
make available to me? (I have a license from Xamarin for this, just need 
the executable)

Many thanks,

Alex Lennon
Director
Dynamic Devices Ltd
http://www.dynamicdevices.co.uk


