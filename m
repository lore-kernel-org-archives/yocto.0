Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58E6EE01443
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2012 13:11:31 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Jun 2012 13:11:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; 
	d="sh'?scan'208";a="147143914"
Received: from unknown (HELO envy.home) ([10.255.12.201])
	by orsmga001.jf.intel.com with ESMTP; 01 Jun 2012 13:11:30 -0700
Message-ID: <4FC921B3.8060904@linux.intel.com>
Date: Fri, 01 Jun 2012 13:10:27 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: jfabernathy <jfabernathy@gmail.com>
References: <4FC79837.2070309@gmail.com> <4FC7B4E3.1010401@linux.intel.com>
	<4FC7BE80.4060700@gmail.com> <4FC7C965.1020809@linux.intel.com>
	<4FC8E39D.3010702@gmail.com> <4FC8F564.90704@linux.intel.com>
	<4FC8FE53.4030508@gmail.com> <4FC8FF90.20403@linux.intel.com>
	<4FC90183.2080107@gmail.com> <4FC9021D.1050706@linux.intel.com>
	<4FC91488.9080106@gmail.com> <4FC91FE0.9040909@linux.intel.com>
	<4FC92118.1060606@gmail.com>
In-Reply-To: <4FC92118.1060606@gmail.com>
X-Enigmail-Version: 1.4.1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-cedartrail - serial console
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
X-List-Received-Date: Fri, 01 Jun 2012 20:11:31 -0000
X-Groupsio-MsgNum: 7023
Content-Type: multipart/mixed; boundary="------------030402010406030600090103"

--------------030402010406030600090103
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/01/2012 01:07 PM, jfabernathy wrote:
> On 06/01/2012 04:02 PM, Darren Hart wrote:

>>>> What is the boot error?
>>>>
>>> SYSLINUX 4.03 2010-10-22 CHS Load error- Boot error
>>>
>>> Jim A
>> OK, I suggest following the instructions for creating a USBZIP format in
>> README.hardware. If that fails, this merits a bug. Regardless, as rework
>> the images for 1.3, we should be able to avoid the many many boot errors
>> like this that people have been reporting and we've been working around.
>>
> I'll test the USBZIP method, but that has a many steps as the How Do I- 
> hard drive method.  I think we need a script like ddimage for USBZIP method.
> 

Attached. I've passed this out to a few people. Would people like to see
this in scripts/contrib?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

--------------030402010406030600090103
Content-Type: application/x-shellscript;
 name="mkzipimage.sh"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="mkzipimage.sh"

IyEvYmluL2Jhc2gKCmZ1bmN0aW9uIHVzYWdlIHsKCWVjaG8gIlVzYWdlOiAkKGJhc2VuYW1lICQw
KSBJTUFHRSBERVZJQ0UiCn0KCmZ1bmN0aW9uIGNoZWNrX2RldmljZSB7CglpZiBbICEgLWIgIiQx
IiBdIHx8IFsgISAtdyAiJDEiIF07IHRoZW4KCQllY2hvICJFcnJvciBvcGVuaW5nIGRldmljZSAn
JDEnLiIKCQllY2hvICJEZXZpY2Ugc2hvdWxkIGJlIGEgd3JpdGFibGUgYmxvY2sgZGV2aWNlLiIK
CQlleGl0IDEKCWZpCn0KCmlmIFsgJCMgLW5lIDIgXTsgdGhlbgoJdXNhZ2UKCWV4aXQgMQpmaQoK
SU1BR0U9JDEKREVWPSQyCgppZiBbICEgLWYgIiRJTUFHRSIgXTsgdGhlbgoJZWNobyAiSW1hZ2Ug
JyRJTUFHRScgZG9lcyBub3QgZXhpc3QuIgoJZXhpdCAxCmZpCgpjaGVja19kZXZpY2UgJERFVgoK
SFM9JChmZGlzayAtbCAkREVWIHwgZWdyZXAgIi4qaGVhZHMuKnNlY3RvcnMuKmN5bGluZGVycyIp
CkhFQURTPSQoZWNobyAkSFMgfCBjdXQgLWQnICcgLWYxKQpTRUNUT1JTPSQoZWNobyAkSFMgfCBj
dXQgLWQnICcgLWYzKQoKZWNobyAiUHJlcGFyaW5nICRERVYsIHRoaXMgbWF5IHRha2Ugc2V2ZXJh
bCBtaW51dGVzLiIKbWtkaXNraW1hZ2UgLTQgJERFViAwICRIRUFEUyAkU0VDVE9SUwppZiBbICQ/
IC1uZSAwIF07IHRoZW4KCWVjaG8gIkVycm9yIHJ1bm5pbmcgbWtkaXNraW1hZ2UuIgoJZXhpdCAx
CmZpCgplY2hvIC1uICJSZW1vdmUgYW5kIHJlaW5zZXJ0IHRoZSBkZXZpY2UsIHRoZW4gcHJlc3Mg
RW50ZXI6ICIKcmVhZAplY2hvIC1uICJFbnRlciB0aGUgbmV3IGRldmljZSBuYW1lIFskREVWXTog
IgpyZWFkIE5FV0RFVgppZiBbIC1uICIkTkVXREVWIiBdOyB0aGVuCglERVY9JE5FV0RFVgpmaQpj
aGVja19kZXZpY2UgJERFVgoKZWNobyAtbiAiTW91bnRpbmcgaW1hZ2UgYW5kIGRldmljZS4uLiIK
bWtkaXIgL3RtcC9pbWFnZS0kJAptb3VudCAtbyBsb29wICRJTUFHRSAvdG1wL2ltYWdlLSQkCmlm
IFsgJD8gLW5lIDAgXTsgdGhlbgoJZWNobyAtZSAiXG5FcnJvciBtb3VudGluZyBpbWFnZS4iCgll
eGl0IDE7CmZpCm1rZGlyIC90bXAvZGV2LSQkCm1vdW50ICRERVZcNCAvdG1wL2Rldi0kJAppZiBb
ICQ/IC1uZSAwIF07IHRoZW4KCWVjaG8gLWUgIlxuRXJyb3IgbW91bnRpbmcgZGV2aWNlLiIKCWV4
aXQgMTsKZmkKZWNobyAiRG9uZSIKCmVjaG8gLW4gIkNvcHlpbmcgaW1hZ2UuLi4iCmNwIC1yZiAv
dG1wL2ltYWdlLSQkLyogL3RtcC9kZXYtJCQKc3luYwplY2hvICJEb25lIgoKZWNobyAtbiAiSW5z
dGFsbGluZyBzeXNsaW51eC4uLiIKc3lzbGludXggJERFVlw0CmVjaG8gIkRvbmUiCgplY2hvICJD
bGVhbmluZyB1cC4uLiIKdW1vdW50IC90bXAvaW1hZ2UtJCQKcm1kaXIgL3RtcC9pbWFnZS0kJAp1
bW91bnQgL3RtcC9kZXYtJCQKcm1kaXIgL3RtcC9kZXYtJCQKZWNobyAiRG9uZSIK

--------------030402010406030600090103--
