Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D6EAE00A6A; Wed, 21 Mar 2018 07:24:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.166 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC091E00744
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 07:24:46 -0700 (PDT)
Received: (qmail 30440 invoked by uid 1003); 21 Mar 2018 14:24:45 -0000
Received: from unknown (HELO ?10.0.0.217?) (philip@opensdr.com@98.245.198.122)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	21 Mar 2018 14:24:45 -0000
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	"Burton, Ross" <ross.burton@intel.com>
References: <CY4PR11MB17663B664B1ED6ADE96BC48AC7D40@CY4PR11MB1766.namprd11.prod.outlook.com>
	<dd055b01-fe83-d706-bce1-5a2aea3103fe@gmail.com>
	<CAJTo0LbxDGNrJH8tDiCgMKoSHUsK8Q17BUH=UVkY8zDBAm70+g@mail.gmail.com>
	<833712e4-00aa-1e05-8df5-a0f9a18d4e29@linux.intel.com>
	<CAJTo0LadpoW1BCCbfhsEac7PBV2qNxuiWrnRk6MZeV2DVWiDEA@mail.gmail.com>
	<61d1ecb9-e4a6-8d26-9bcc-76c7c42abb7f@linux.intel.com>
From: Philip Balister <philip@balister.org>
Message-ID: <b65227e0-d37f-6ae6-9f4c-4c535460143e@balister.org>
Date: Wed, 21 Mar 2018 08:24:44 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <61d1ecb9-e4a6-8d26-9bcc-76c7c42abb7f@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: =?UTF-8?B?UmU6IFtPRS1jb3JlXSBZb2N0byBQcm9qZWN0IFN0YXR1cyBXVzEy4oCZMTg=?=
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
X-List-Received-Date: Wed, 21 Mar 2018 14:24:47 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 8bit

On 03/20/2018 05:26 AM, Alexander Kanavin wrote:
> On 03/20/2018 12:52 PM, Burton, Ross wrote:
>>     Which brings me to a question: what is a good schedule and cadence
>>     for AUH runs? Currently it's run on the 15th of every odd-numbered
>>     month (so January, March, and so on), but I thought of shifting it
>>     one month forward, so it doesn't land right in the middle of a
>>     feature freeze. Thoughts?
>>
>>
>> How long does a single run take, and why not run it every month?
> 
> Just a bit longer than a day, maybe 30 hours, if it needs to update the
> typical amount of 100-150 packages. I'll shift it to monthly then.

Maybe bi-weekly? Could that help reduce the number of upgrades needed
for each run?

Philip

