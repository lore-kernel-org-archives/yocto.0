Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93BBEE00885; Mon, 20 Oct 2014 23:51:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49D5FE0080C;
	Mon, 20 Oct 2014 23:51:34 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 20 Oct 2014 23:48:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,760,1406617200"; d="scan'208";a="592916264"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga001.jf.intel.com with ESMTP; 20 Oct 2014 23:51:32 -0700
Received: from irsmsx153.ger.corp.intel.com (163.33.192.75) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Tue, 21 Oct 2014 07:50:59 +0100
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.199]) by
	IRSMSX153.ger.corp.intel.com ([169.254.9.23]) with mapi id
	14.03.0195.001; Tue, 21 Oct 2014 07:50:58 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: Michael Halstead <michael@yoctoproject.org>, Paul Barker
	<paul@paulbarker.me.uk>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>, "Zhao, Yi (Wind River)"
	<yi.zhao@windriver.com>
Thread-Topic: [yocto] Release Candidate Build for yocto-1.7.rc4 now available.
Thread-Index: AQHP7PtcETXbEDMcekKZbTEpCbwqng==
Date: Tue, 21 Oct 2014 06:50:55 +0000
Message-ID: <D06BDCFA.C83E%alexandru.c.georgescu@intel.com>
References: <20141012005156.D66DC2C0219@ubuntu1204.osl.yoctoproject.org>
	<CANyK_8fVecgg=pZnV9fwqz=YB3OM9mmm2MN4JD=L0ct15qKBpQ@mail.gmail.com>
	<544435BD.4080001@yoctoproject.org>
	<D06A908D.C746%alexandru.c.georgescu@intel.com>
	<5445C579.50406@yoctoproject.org>
In-Reply-To: <5445C579.50406@yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.5.141003
x-originating-ip: [10.237.108.33]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Release Candidate Build for yocto-1.7.rc4 now available.
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
X-List-Received-Date: Tue, 21 Oct 2014 06:51:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <C8A5B7C84CDE2141B2DDE01A4FD26555@intel.com>
Content-Transfer-Encoding: quoted-printable

Thanks!
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania




On 21/10/14 05:31, "Michael Halstead" <michael@yoctoproject.org> wrote:

>You were both already in the CC list. You should receive copies when the
>next release candidate is built.
>
>Michael Halstead
>Yocto Project / System Administrator
>
>On 10/20/2014 12:13 AM, Georgescu, Alexandru C wrote:
>> Hi Michael,
>> Can you add me and Yi on the CC as well?
>>
>> Thanks,
>> --
>> Alexandru Georgescu
>> Yocto QA Engineer
>> SSG/SSD Open Source Technology Center Romania
>>
>>
>>
>>
>> On 20/10/14 01:05, "Michael Halstead" <michael@yoctoproject.org> wrote:
>>
>>> The QA_MAIL_CC value in ./config/autobuilder.conf needed to be comma
>>> separated. I think it is fixed now.
>>>
>>> Thanks for the report.
>>>
>>> Michael Halstead
>>> Yocto Project / SysAdmin
>>>
>>> On 10/12/2014 04:33 AM, Paul Barker wrote:
>>>> On 12 October 2014 01:51, Poky Build User
>>>> <pokybuild@ubuntu1204.osl.yoctoproject.org> wrote:
>>>>> This is an automated message from
>>>>> The Yocto Project Autobuilder
>>>>> Git: git://git.yoctoproject.org/yocto-autobuilder
>>>>> Email: elizabeth.flanagan@intel.com
>>>> Beth,
>>>>
>>>> I noticed that the Cc list for the original email looks to be
>>>>corrupted:
>>>>     Cc: ""@ossystems.com.bryi.zhao, elizabeth.flanagan@intel.comyocto,
>>>>          ""@windriver.com, ""@yoctoproject.orgalexandru.c.georgescu,
>>>>          ""@intel.comotavio
>>>>
>>>> Just letting you know incase you missed this and it needs attention,
>>>>
>>>
>>
>
>


