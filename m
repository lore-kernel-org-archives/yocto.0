Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
 by mx.groups.io with SMTP id smtpd.web10.16019.1584540748367669326
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 07:12:29 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: savoirfairelinux.com, ip: 208.88.110.44, mailfrom: jean-marie.lemetayer@savoirfairelinux.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 7634D9C031E;
	Wed, 18 Mar 2020 10:12:27 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id DSyZWf7_pAcb; Wed, 18 Mar 2020 10:12:26 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 8AFF69C042B;
	Wed, 18 Mar 2020 10:12:26 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id NvqtasZSNwUy; Wed, 18 Mar 2020 10:12:26 -0400 (EDT)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [192.168.48.237])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 694CD9C031E;
	Wed, 18 Mar 2020 10:12:26 -0400 (EDT)
Date: Wed, 18 Mar 2020 10:12:26 -0400 (EDT)
From: "Jean-Marie Lemetayer" <jean-marie.lemetayer@savoirfairelinux.com>
To: Paul Barker <pbarker@konsulko.com>
Cc: Mikko Rapeli <mikko.rapeli@bmw.de>, 
	oliver westermann <oliver.westermann@cognex.com>, 
	yocto@lists.yoctoproject.org, 
	embedded-discuss <embedded-discuss@lists.savoirfairelinux.net>
Message-ID: <251912923.167286.1584540746314.JavaMail.zimbra@savoirfairelinux.com>
In-Reply-To: <CAM9ZRVuQyj7X0YFqkpSFWM2=kQHnu8ZGpMsD34ntHYny4x7XJg@mail.gmail.com>
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org> <20200318130126.GK104502@korppu> <CAM9ZRVuQyj7X0YFqkpSFWM2=kQHnu8ZGpMsD34ntHYny4x7XJg@mail.gmail.com>
Subject: Re: [yocto] What are the key factors for yocto build speed?
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.11_GA_3737 (ZimbraWebClient - GC80 (Linux)/8.8.11_GA_3737)
Thread-Topic: What are the key factors for yocto build speed?
Thread-Index: sdrABg3xuTlXji5KSpJHCFopD5Ms/Q==
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

In my company we have tested some "big Ryzen" configurations to speed up Yocto builds.

The conclusion of these tests is that the build time is almost only related to the CPU score: https://www.cpubenchmark.net/high_end_cpus.html

The speed (overclock) and size of the RAM does not influence the build time, neither the the use of a SATA SSD or a NVME.

For example one of our build servers is using:
- AMD Ryzen 9 3900X
- ASUS PRIME X570-P
- 32Go DDR4 3200 MHZ CL14
- 500Go SSD

It is a really good price / build time ratio configuration.

Best regards,
Jean-Marie

On Mar 18, 2020, at 2:29 PM, Paul Barker pbarker@konsulko.com wrote:
> On Wed, 18 Mar 2020 at 13:01, Mikko Rapeli <mikko.rapeli@bmw.de> wrote:
>>
>> On Wed, Mar 18, 2020 at 05:52:37AM -0700, Oliver Westermann wrote:
>> > Hey,
>> >
>> > We're currently using a VM on Windows and it's a lot slower than the native
>> > linux build (which is expected).
>> > We're looking into getting a dedicated build server for our team (basically a
>> > self-build tower PC). Any suggestions what to put in that build to get the most
>> > out of it?
>> >
>> > Currently we're looking at a big Ryzen, 64G of RAM and one or multiple SSDs on a
>> > "consumer grade" board like the X570.
>>
>> Drop all virtualization and go for Linux on bare metal. Then make sure there
>> is enough(tm) physical RAM for each CPU thread. For a "big Ryzen" the 64G of RAM
>> sounds
>> too little. I'd go higher there, but it all depends what kind of project
>> is being compiled.
>>
>> I would also setup CPU, RAM, disk IO and network IO monitoring on the build
>> machines
>> and review and monitor the build times and results when the project evolves.
>> There are
>> times when most CPUs will be idling and there will be times when IO to disk is
>> happening even when RAM is available. Linux kernel can be tuned to avoid disk IO
>> if
>> RAM is still available for example.
> 
> What Mikko said is excellent advice.
> 
> I'd recommend NVMe drives if you can. My build machine has two large
> M.2 NVMe drives, one is used for the working directory and the other
> for sstate, downloads and source checkouts to make the best use of the
> available bandwidth. I find that XFS is a better fit than ext4 when
> you've got fast drives and highly parallel I/O workloads.
> 
> Make sure you spread your RAM across the different memory channels on
> your motherboard as this increases memory bandwidth - this usually
> means either filling your RAM slots or half-filling them with RAM in
> every 2nd slot but you'll need to check the motherboard manual to
> confirm the channel layout.
> 
> Let me know if you need a detailed review of your proposed setup.
> 
> Thanks,
> Paul
> 
> 
