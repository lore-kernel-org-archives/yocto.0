Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4304E00596
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2012 14:12:28 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q1SMCObJ006372
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 28 Feb 2012 14:12:25 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.21.27) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Tue, 28 Feb 2012 14:12:24 -0800
Message-ID: <4F4D5147.1070202@windriver.com>
Date: Tue, 28 Feb 2012 17:12:23 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1202281349020.2440@oneiric>
	<4F4D457F.7000306@windriver.com>
	<alpine.DEB.2.02.1202281651040.8024@oneiric>
In-Reply-To: <alpine.DEB.2.02.1202281651040.8024@oneiric>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: proper recipe for building for beagle xM? meta-ti?
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
X-List-Received-Date: Tue, 28 Feb 2012 22:12:28 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-02-28 4:55 PM, Robert P. J. Day wrote:
> On Tue, 28 Feb 2012, Bruce Ashfield wrote:
>
>> It is true that the beagleboard is a hardware reference board in the
>> yocto consolidated kernel tree and meta-yocto layers. That means
>> that it gets the yocto standard QA builds and boot testing.
>>
>> That being said, if you are looking for the latest + specific
>> features then you've been pointed in a good direction .. meta-ti
>> will meet your needs.
>>
>> As for disentangling and reducing questions in this area .. rest
>> assured, we are working on it.
>
>    ok, that's perfectly reasonable -- meta-yocto provides a generic,
> well-tested product, while the meta-ti layer provides more
> leading-edge content, correct?  which is a perfectly respectable
> answer.
>
>    but the impression i got from koen is that this wasn't even the
> right forum to ask such a question.  so i'm a bit confused -- can i
> just use the combination of yocto + meta-ti to build a fairly
> up-to-date image for my beagle xM or not?

I'm not 100% up on the progress on the TI layers, but as far as
I know, your description above is a goal.  meta-ti works on top of
oe-core and with other layers (i.e. angstrom) to produce what you
describe. I've also heard that there's a variant that works with
(just) oe-core (I'm not recalling all the details and can't look
them up right now) to produce an image. The READMEs in the various
layers should spell out the dependencies.

If you are still working on this, and it isn't making sense, drop
another email and someone can help translate!

Cheers,

Bruce

>
> rday
>


