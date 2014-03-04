Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3A1FE00970
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 02:10:18 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 89A3B862DC
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 10:10:17 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id mSheQlc-hvyb for <yocto@yoctoproject.org>;
	Tue,  4 Mar 2014 10:10:17 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id E6F128610D
	for <yocto@yoctoproject.org>; Tue,  4 Mar 2014 10:10:16 +0000 (UTC)
Message-ID: <5315A685.5070702@dynamicdevices.co.uk>
Date: Tue, 04 Mar 2014 10:10:13 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Enigmail-Version: 1.6
Subject: FILES_${PN} packaging and wildcarded exclusions
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
X-List-Received-Date: Tue, 04 Mar 2014 10:10:19 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I'm trying to understand how to cleanly extend FILES${PN} to include
files that are staged and need to be packaged

If I start with something like

FILES_${PN} += " \
${libdir}/mono/gac/policy.0.2.Mono.Addins/0.0.0.0__0738eb9f132ed756/* \
${libdir}/mono/gac/policy.0.2.Mono.Addins.Setup/0.0.0.0__0738eb9f132ed756/*
\
${libdir}/mono/gac/policy.0.6.Mono.Addins.CecilReflector/0.0.0.0__0738eb9f132ed756/*
\
${libdir}/mono/gac/policy.0.6.Mono.Addins.Gui/0.0.0.0__0738eb9f132ed756/* \
<snip/>

I seem to be able to clean that up a bit to

FILES_${PN} += " \
${libdir}/mono/gac/*/*/* \
<snip/>

What I'd like to do is to be able to represent "all files excepting
files ending with .mdb", for example, as I want to add those to a
${PN}-dbg package.

I was wondering if there's a syntax I can use within FILES_${PN} to
achieve that cleanly?

Thanks,

Alex



