Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A841DE00CAE; Thu, 24 Nov 2016 06:00:55 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 26798E00955
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 06:00:52 -0800 (PST)
Received: (qmail 30633 invoked by uid 1003); 24 Nov 2016 14:00:50 -0000
Received: from unknown (HELO ?192.168.1.59?) (philip@opensdr.com@174.63.39.132)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	24 Nov 2016 14:00:50 -0000
To: "Burton, Ross" <ross.burton@intel.com>, Oliver <urnen81@yahoo.es>
References: <1587381958.322993.1479895234059.ref@mail.yahoo.com>
	<1587381958.322993.1479895234059@mail.yahoo.com>
	<CAJTo0LbHi-79qj7B9PoOt0jyLaxeHU6aUTwwaiOsiXbi1Ra4xw@mail.gmail.com>
	<823264942.1789329.1479984190440@mail.yahoo.com>
	<CAJTo0LZZ_53Jk5y4XCVmxNhUSPZtC=nGubuKfH3rC-ChEOJJ7g@mail.gmail.com>
From: Philip Balister <philip@balister.org>
Message-ID: <ed74b115-3ebb-c355-6667-37ccf7347093@balister.org>
Date: Thu, 24 Nov 2016 09:00:42 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZZ_53Jk5y4XCVmxNhUSPZtC=nGubuKfH3rC-ChEOJJ7g@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Use recipes but not whole layer
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
X-List-Received-Date: Thu, 24 Nov 2016 14:00:55 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 11/24/2016 06:14 AM, Burton, Ross wrote:
> On 24 November 2016 at 10:43, Oliver <urnen81@yahoo.es> wrote:
> 
>> In order to success in generate recipeA, I need to extend the boost to
>> expand some configuration parameters(log).
>> On the other side someone would like to use recipeB. He/She will
>> unwillingly inherit the boost modifications.
>>
> 
> The changes to boost would likely count as distro policy, so shouldn't be
> in the same layer as a generic purpose recipe.

What boost changes? They may be of interest to others and we could
update the recipe in oe-core.

Philip

> 
> Ross
> 
> 
> 

