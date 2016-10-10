Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C858BE0095D; Mon, 10 Oct 2016 03:47:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95339E00777
	for <yocto@yoctoproject.org>; Mon, 10 Oct 2016 03:47:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u9AAlDR4016837
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 10 Oct 2016 03:47:13 -0700 (PDT)
Received: from soho-mhatle-m.local (147.11.116.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Mon, 10 Oct 2016 03:47:12 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
	<2819650.EJqT4j8vUA@peggleto-mobl.ger.corp.intel.com>
	<22009FF1-52AB-447C-9193-C60FFEC966E6@windriver.com>
	<1973495.KDbYGoBku8@peggleto-mobl.ger.corp.intel.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <23f23361-56e8-9ce7-b423-4812e8347b53@windriver.com>
Date: Mon, 10 Oct 2016 12:47:11 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <1973495.KDbYGoBku8@peggleto-mobl.ger.corp.intel.com>
Cc: "Howlett, Liam" <Liam.Howlett@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [layerindex-web][PATCH v2 00/12] Add Distro, dependency and recommends detection, and import_project
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
X-List-Received-Date: Mon, 10 Oct 2016 10:47:20 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 10/10/16 12:37 PM, Paul Eggleton wrote:
> On Mon, 10 Oct 2016 04:48:41 Hatle, Mark wrote:
>>> On Oct 10, 2016, at 2:54 AM, Paul Eggleton <paul.eggleton@linux.intel.com>
>>> wrote:
>>>> On Fri, 07 Oct 2016 13:20:50 Mark Hatle wrote:
>>>> FYI, I have made sure these are re-based on top of paule/django18 and
>>>> pushed to:
>>>>
>>>> git://git.yoctoproject.org/layerindex-web mhatle/django18
>>>>
>>>> BTW for me upgrading from paule/django18 to this version.  I only had to
>>>> run 'manage.py syncdb'.
>>>>
>>>> This created the new database and added the missing field for the
>>>> recommend.> 
>>> I'm not sure how that worked there but it doesn't work here. If I take a
>>> database that works on paule/django18, run syncdb then open the admin
>>> interface and click on "Layer branches" I get:
>>
>> We found a severe lack of instructions for creating migrations.  There were
>> instructions for adding and deleting full DBs but not changing them.  We
>> will need pointers or help to resolve this.
>>
>>>  no such column: layerindex_layerbranch.collection
>>
>> I never got that, but I'm also running SQLite.  May be the difference.
> 
> I'm using sqlite here also.
>  
>>> I'm afraid we really do need to create migrations whenever we change the
>>> models.
>>
>> Based on your prior comments we failed to find ANY reasonable examples, docs
>> or instructions on doing this.  So we are stuck without help.
> 
> I'm happy to help directly if needed, but did you come across this already?
> 
>   https://docs.djangoproject.com/en/1.8/topics/migrations/

Unfortunately that is the exactly document I was looking at and could not figure
it out.

I can the various commands, makemigrations and related.. and the system simply
told me "no migrations necessary".. and didn't generate any.

So we were never able to figure out what a migration should look like or how to
generate it.

If you (or someone else) can help us figure out how to create a migration, I
suspect after the first one  ---  future ones will be much easier to generate.

--Mark


> Cheers,
> Paul
> 


