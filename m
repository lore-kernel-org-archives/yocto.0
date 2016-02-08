Return-Path: <bartosz.woronicz@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CFAEE00D86; Mon,  8 Feb 2016 05:21:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [93.183.12.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from demumfd002.nsn-inter.net (demumfd002.nsn-inter.net
	[93.183.12.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB103E00D82
	for <yocto@yoctoproject.org>; Mon,  8 Feb 2016 05:20:58 -0800 (PST)
Received: from demuprx017.emea.nsn-intra.net ([10.150.129.56])
	by demumfd002.nsn-inter.net (8.15.2/8.15.2) with ESMTPS id
	u18DKuX8014635
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Mon, 8 Feb 2016 13:20:57 GMT
Received: from [10.154.187.104] ([10.154.187.104])
	by demuprx017.emea.nsn-intra.net (8.12.11.20060308/8.12.11) with ESMTP
	id u18DKu8H012694
	for <yocto@yoctoproject.org>; Mon, 8 Feb 2016 14:20:56 +0100
To: yocto@yoctoproject.org
References: <56B1D2D1.5010508@nokia.com> <1454497513.3990.6.camel@open-rnd.pl>
	<56B33100.9020903@nokia.com>
From: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Message-ID: <56B89638.9060905@nokia.com>
Date: Mon, 8 Feb 2016 14:20:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <56B33100.9020903@nokia.com>
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for
	further information)
X-purgate-size: 2285
X-purgate-ID: 151667::1454937657-0000462D-780AF55E/0/0
Subject: Re: Where should I append Yocto bitbake task to create work folder symlink ?
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
X-List-Received-Date: Mon, 08 Feb 2016 13:21:01 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

The problem is, it doesn't doit delirebately,

when I run

bitbake -f -c latest_link myrecipe , it works

when the process is in the tasks batch running
bitbake myrecipe
it doesn't
What am I doing wrong ?

Kind regards,
Bartosz Woronicz
Engineer, Software Configuration (SCM)
NSN - PL/Wroclaw

On 04.02.2016 12:07, EXT Woronicz, Bartosz ( NSN - PL/Wroclaw) wrote:
> Whoa,
>
> That's great! However I modified it, so the link will be relative
>
> The problem is that it works until you have sstate cache empty, 
> because after that it doesn't fetch and unpack when already have it in
>
> do_latest_link() {
>     if [ -n "${WORKDIR}" ]; then
>         linkname="$(basename $(dirname ${WORKDIR}))/latest"
>         rm -f $linkname
>         ln -s ${WORKDIR} $linkname
>     fi
> }
> addtask latest_link after do_unpack
>
>
> Kind regards,
> Bartosz Woronicz
> Engineer, Software Configuration (SCM)
> NSN - PL/Wroclaw
>
> On 03.02.2016 12:05, EXT Maciek Borzecki wrote:
>> On śro, 2016-02-03 at 11:13 +0100, Woronicz, Bartosz ( NSN - 
>> PL/Wroclaw) wrote:
>>> Let's say I have my package at
>>>
>>>       host-64/tmp/work/x86_64-poky-linux/mypackage/1.2.3-r4/
>>>
>>> I would like to have symlink created
>>>
>>>       host-64/tmp/work/x86_64-poky-linux/mypackage/latest -> 1.2.3-r4/
>>>
>>> each time the new version is fetched and unpacked. How can I achieve
>>> that ? Which class, task should I append, extend ?
>>>
>>> Optionally, I would like to have that for all packages or at least
>>> packages in my meta.
>>>
>>>
>>> P.S. I asked the same question here:
>>> http://stackoverflow.com/questions/35158764/where-should-i-append-yocto-bitbake-task-to- 
>>>
>>> create-work-folder-symlink
>>>
>> Put that into a class in your layer, ex. latest-link.bbclass (untested):
>>
>> do_latest_link() {
>>     if [ -n "${WORKDIR}" ]; then
>>         linkname="$(dirname ${WORKDIR})/latest"
>>         rm -f $linkname
>>         ln -s ${WORKDIR} $linkname
>>     fi
>> }
>> addtask latest_link after do_unpack
>>
>>
>> If you want that applied to all the recipes then add INHERIT += 
>> "latest-link" in your
>> local.conf. The other way is just to 'inherit latest-link' in 
>> individual recipes.
>>
>>
>


