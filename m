Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66796E00A9C; Tue, 21 Nov 2017 21:58:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAB08E008A4
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 21:58:14 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id vAM5wCE8008708
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 21 Nov 2017 21:58:13 -0800 (PST)
Received: from [128.224.162.147] (128.224.162.147) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 21 Nov 2017 21:57:54 -0800
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <bfbfad0b-af40-5448-4aed-fc70eeb95c6c@windriver.com>
	<2715985.tmFNQIJNkk@peggleto-mobl.ger.corp.intel.com>
	<757314ef-1118-74b8-6793-b028b63084cf@windriver.com>
	<21288902.HEIsViCvam@peggleto-mobl.ger.corp.intel.com>
From: Hongxu Jia <hongxu.jia@windriver.com>
Message-ID: <5899fcdb-0cf8-0272-7023-b1ca829f5f16@windriver.com>
Date: Wed, 22 Nov 2017 14:00:13 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <21288902.HEIsViCvam@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org, +lpd-cdc-core-dev <lpd-cdc-core-dev@windriver.com>,
	"Yang, Zhangle \(Eric\)" <Zhangle.Yang@windriver.com>
Subject: Re: Contribute meta-installer to yocto
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
X-List-Received-Date: Wed, 22 Nov 2017 05:58:15 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

On 2017年11月22日 11:20, Paul Eggleton wrote:
> Hi Hongxu,
>
> On Wednesday, 22 November 2017 3:56:31 PM NZDT Hongxu Jia wrote:
>> On 2017年11月22日 06:28, Paul Eggleton wrote:
>>> On Wednesday, 22 November 2017 10:24:59 AM NZDT Burton, Ross wrote:
>>>> On 21 November 2017 at 08:55, Hongxu Jia <hongxu.jia@windriver.com>
> wrote:
>>>>> If yocto is interested in this layer and will accept it,
>>>>> I could send pull request or some one directly fetch
>>>>> from above github master branch.
>>>> Are you asking for a git repo on git.yoctoproject.org?  If you want one I
>>>> believe the process is to ask Michael Halstead.  There's no reason why it
>>>> can't be maintained in this repository forever though,  just submit it to
>>>> the layer index.
>>> It's now in the layer index FYI, though actual metadata updates are
>>> currently broken unfortunately - Michael is working on the latter I
>>> believe.
>> I have already submitted it to layer index, but the git repository is
>> still point to the github.
>>
>> http://layers.openembedded.org/layerindex/branch/master/layer/meta-installer/
> Right.
>
>> Does the metadata updates clone it from github to yocto
>> if it is accepted? I think I should ask Michael for help.
> That's separate, you'd need to ask Michael for a repository and then push the
> repo contents to it once it's created. If/when you do move the layer I am
> happy to update the layer index entry, just let me know.

Thank you very much, I will talk with Michael first.

Thanks again.

//Hongxu

> Cheers,
> Paul
>
>


