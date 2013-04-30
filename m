Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A863E014FB
	for <yocto@yoctoproject.org>; Tue, 30 Apr 2013 13:30:18 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Apr 2013 13:30:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,582,1363158000"; d="scan'208";a="330333831"
Received: from unknown (HELO [10.255.12.150]) ([10.255.12.150])
	by fmsmga002.fm.intel.com with ESMTP; 30 Apr 2013 13:30:03 -0700
Message-ID: <518029CA.7080600@linux.intel.com>
Date: Tue, 30 Apr 2013 13:30:02 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Felix01 Fischer <felix01.fischer@iav.de>
References: <OF804FFBA4.FE98BF7E-ONC1257B5D.004B9DB5-C1257B5D.004E012E@retarus.de>
In-Reply-To: <OF804FFBA4.FE98BF7E-ONC1257B5D.004B9DB5-C1257B5D.004E012E@retarus.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: booting with systemd fails with poky 9.0.0 & meta-ivi 4.0 & meta-intel master
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
X-List-Received-Date: Tue, 30 Apr 2013 20:30:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 04/30/2013 07:12 AM, Felix01 Fischer wrote:
> Hello,
>
> I am not able to boot a genivi-compliant yocto build. The error is
>
> "/init:: line XX: mount: not found"
>
> I'm using poky 9.0.0, meta-ivi 4.0 & meta-intel master, machine??=
> crownbay, DISTRO ?= "poky-ivi-systemd" and followed the inherent README.
>
I attempted a similar build with qemux86-64 and did not find any 
problems with it, I was able to boot corrrectly to login prompt 
generated from systemd.

I am looking at the rootfs, can you confirm if mount is correctly 
installed in your rootfs?  You can look in 
tmp-eglibc-eglibc/work/qemux86_64-oe-linux/foton-image/4.0.0-r0/rootfs/ 
to see if mount is installed correctly in bin.

Do you have another log output?

Did you change anything else?

Thanks
	Sau!


> This error occurred with yocto 8.0.1, meta-ivi 3.0 & meta-intel 8.0.0, too.
>
> I'm kinda new to the whole systemd thing, so maybe this error is trivial
> to solve?
>
> Regards,
>
> Felix Fischer
>
>
> Viele Grüße
>
> Felix Fischer
>
> Studentischer Mitarbeiter (VC-D1)
> Vehicle Cockpit Electronics Devices
>
> IAV GmbH
> Carnotstr. 1
> 10587 BERLIN
> GERMANY
>
> Phone: +49 30 39978-9540
> Fax:      +49 30 39978-9411
> E-Mail:  <mailto:felix01.fischer@iav.de>
> Internet: http://www.iav.com <http://www.iav.com/>
>
> Sitz/Registered Office: Berlin,
> Registergericht/Registration Court: Amtsgericht Charlottenburg,
> Registernummer/Company Registration Number: HRB 21 280,
> Geschäftsführer/Managing Directors: Kurt Blumenröder, Michael Schubert,
> Dr. Rüdiger Goyk
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

