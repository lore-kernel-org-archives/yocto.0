Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D64FAE01408
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 07:27:35 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 24 Jun 2013 07:27:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,928,1363158000"; d="scan'208";a="354889500"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by fmsmga001.fm.intel.com with ESMTP; 24 Jun 2013 07:28:17 -0700
Received: from orsmsx107.amr.corp.intel.com (10.22.240.5) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 24 Jun 2013 07:27:20 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.181]) by
	ORSMSX107.amr.corp.intel.com ([169.254.1.130]) with mapi id
	14.03.0123.003; Mon, 24 Jun 2013 07:27:20 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Philip Balister <philip@balister.org>
Thread-Topic: [yocto] Documenting YP Development Environment in more detail
	- user configuration
Thread-Index: Ac5uWGop+mI2fmjhR1eciv3x50rfAQCNXcvQACJr5oAADJ05QA==
Date: Mon, 24 Jun 2013 14:27:20 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF514AE@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5130F@ORSMSX101.amr.corp.intel.com>
	<51C8466F.8040808@balister.org>
In-Reply-To: <51C8466F.8040808@balister.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail - user configuration
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
X-List-Received-Date: Mon, 24 Jun 2013 14:27:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

What I was trying to convey here is that oe-init-build-env draws on some fi=
les in the meta-yocto layer.  The script oe-init-build-env is in the poky r=
epository (or refered to as "Source Directory" in the documentation).  The =
sample files are in the meta-yocto layer.  I thought the meta-yocto layer w=
as needed... maybe I am wrong.  Can I get more clarification on this?

Thanks,
Scott

>-----Original Message-----
>From: Philip Balister [mailto:philip@balister.org]
>Sent: Monday, June 24, 2013 6:15 AM
>To: Rifenbark, Scott M
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] Documenting YP Development Environment in more
>detail - user configuration
>
>On 06/23/2013 11:52 PM, Rifenbark, Scott M wrote:
>> Hi,
>>
>> I am going to start throwing these diagrams out to the mailing list
>and see if I can get any feedback.  This attached figure dives into user
>configuration.  Any and all discussion, correction, suggestions are
>welcome.
>
>It appears the diagram says that the oe-init-build-env script creates
>the files in the users conf dir from the meta-yocto layer. These files
>(and the script) are in meta. This diagram creates the misleading idea
>that the meta-yocto layer is mandatory in order to create a working
>build.
>
>Philip
>
>>
>> Scott
>>
>>> -----Original Message-----
>>> From: Rifenbark, Scott M
>>> Sent: Friday, June 21, 2013 1:22 AM
>>> To: Paul Eggleton; Burton, Ross
>>> Subject: user configuration
>>>
>>> Paul and Ross,
>>>
>>> Attached is a sample figure that focuses on "User Configuration."
>The
>>> illustration attempts to reveal where user configuration data comes
>from
>>> and what processes and user-driven commands are related to it.  Right
>>> now, BitBake is simply a box.
>>>
>>> If you can, give me some comments on this.  I would like to hear on
>>> level of detail as well as technical accuracy.
>>>
>>> Thanks,
>>> Scott
>>>
>>> Scott Rifenbark
>>> Intel Corporation
>>> Yocto Project Documentation
>>> 503.712.2702
>>> 503.341.0418 (cell)
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>

