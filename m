Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49A47E0090E; Mon, 29 Feb 2016 12:13:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.167 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 1F509E007DC
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 12:13:49 -0800 (PST)
Received: (qmail 13097 invoked by uid 1003); 29 Feb 2016 20:13:48 -0000
Received: from unknown (HELO ?192.168.11.140?)
	(philip@opensdr.com@71.171.15.136)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	29 Feb 2016 20:13:48 -0000
To: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"Barros Pena, Belen" <belen.barros.pena@intel.com>
References: <2956615.y8hyrZheM7@peggleto-mobl.ger.corp.intel.com>
	<3845777.DZXZ3IeRVd@peggleto-mobl.ger.corp.intel.com>
	<D2F9DB3A.7513C%belen.barros.pena@intel.com>
	<3422071.a5vtJpgWht@peggleto-mobl.ger.corp.intel.com>
From: Philip Balister <philip@balister.org>
Message-ID: <56D4A67B.8090605@balister.org>
Date: Mon, 29 Feb 2016 15:13:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <3422071.a5vtJpgWht@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
Subject: Re: [Openembedded-architecture] Standalone image writer
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
X-List-Received-Date: Mon, 29 Feb 2016 20:13:53 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 02/29/2016 02:52 PM, Paul Eggleton wrote:
> On Mon, 29 Feb 2016 11:27:15 Barros Pena, Belen wrote:
>> On 29/02/2016 08:12, "yocto-bounces@yoctoproject.org on behalf of Paul
>> Eggleton" <yocto-bounces@yoctoproject.org on behalf of
>> paul.eggleton@linux.intel.com> wrote:
>>> There isn't a frontend UI for wic that I am aware of though - as I
>>> mentioned earlier image-writer has no support for it, it's just doing a
>>> straight dd to the device.
>>
>> We would really like to add support for wic at some point.
>>
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=8769
> 
> True, but that's a slightly different usage of wic - i.e. preparing the 
> formatted image, which we should support. However, writing a formatted image 
> to an SD card / USB stick isn't something you could practically do from a web-
> based application I don't think - not without help from a local application at 
> any rate.

For writing the output of wic to an mmc card, I use wic. I believe it is
available as an Ubuntu package and works well on Fedora.

https://source.tizen.org/documentation/reference/bmaptool/bmap-tools-project

Philip

> 
> Cheers,
> Paul
> 

