Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8D1FE01793
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 12:38:31 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 06 Nov 2013 12:38:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,647,1378882800"; d="scan'208";a="423366740"
Received: from unknown (HELO [10.255.14.249]) ([10.255.14.249])
	by fmsmga001.fm.intel.com with ESMTP; 06 Nov 2013 12:38:13 -0800
Message-ID: <527AA8B5.8060603@linux.intel.com>
Date: Wed, 06 Nov 2013 12:38:13 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, 
	Yocto discussion list <yocto@yoctoproject.org>
References: <alpine.DEB.2.02.1311061346180.25975@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F44CAE@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F44CAE@ORSMSX101.amr.corp.intel.com>
Subject: Re: FW: curious about ref manual, sec 6.1.11, oe-init-build-env-memres
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
X-List-Received-Date: Wed, 06 Nov 2013 20:38:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/06/2013 11:11 AM, Rifenbark, Scott M wrote:
> Anyone know this?
>
>> -----Original Message-----
>> From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>> Sent: Wednesday, November 06, 2013 10:48 AM
>> To: Rifenbark, Scott M
>> Subject: curious about ref manual, sec 6.1.11, oe-init-build-env-memres
>>
>>
>>   i've never used that memory-resident version of bitbake -- it's not clear from
>> that section whether you need to start bitbake running before you run that
>> script.
>>
Running that scripts will start the server at the default port of 12345 
and setup the default "build" directory.

>>   that is, it's not really *explicitly* explained whether running that script with a
>> port number *starts* the bitbake server. does it?
>>
Yes, running the script with a port number will start the server using 
that port number.

The bitbake -m command will Stop the server.

Sau!

>> rday
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

