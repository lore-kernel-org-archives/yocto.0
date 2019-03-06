Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22FD5E00C93; Wed,  6 Mar 2019 15:37:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 662D4E00BCC
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 15:37:19 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x26NbGGB014873
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 6 Mar 2019 15:37:16 -0800 (PST)
Received: from soho-mhatle-m.local (172.25.36.233) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.439.0;
	Wed, 6 Mar 2019 15:37:15 -0800
To: Alex Kiernan <alex.kiernan@gmail.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
References: <6323ed1d-0e39-4d07-e691-5e3e07f007f9@windriver.com>
	<90ababe5-0ec7-ccb6-9308-19660f573930@ni.com>
	<905307c29324d701044d2d1b2fd0952edd3fbc36.camel@linuxfoundation.org>
	<CAO5Uq5T=uC7qQ3y0cYEG5iFyeA6hhvwz4bV9SOUyRnvtSEqAbQ@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Openpgp: preference=signencrypt
Autocrypt: addr=mark.hatle@windriver.com; prefer-encrypt=mutual; keydata=
	mQENBFYKxFgBCACt/pzutBp6p/xVKTFJjHbM3KpQKCblyot/YP+bpTr51Hrc5xDXBQhoG7TC
	aIRvRIvbhEevEQK9y04gW3JK/5lobq5ORebolcsHlYBUvpNeIPjupLQwGvz/TPtrLRNGLqDC
	rvsM6OA2XbQ2bwzxWaSQS3ImE2O2iXOZn9HhThMGeDB4Nff3fgUvXOTDIrgWOn9K2DgLL7Yc
	zkUIlFdj+Nraksd/7BSk8oH6tjeBVhFqSFvKta9QxWgdr58oPaTYaW/xNqUjlLrbJuMw/MSe
	xzuYfdfDfm6J8kRjMOnwQ0n8svJElzqAk+d83ow38gpGQ+LkjGgnf8ZFJ4rUJFADroX3ABEB
	AAG0JU1hcmsgSGF0bGUgPG1hcmsuaGF0bGVAd2luZHJpdmVyLmNvbT6JATcEEwEIACEFAlYK
	xFgCGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4AACgkQfv796/r0vvlvZAf9Gs+eN320yhRW
	V/fZCsngKhmOK4v3HrTwFrkSmoD9QHQiE/5IPdNacHwIPwZx07tNBohB8xOeNqCPRYRBwGhA
	AnxKOPyd0nnm6ZhPzbA57v4x3IGRQr4QzvcBTASJq91l3Ew4lpAslyx5w1DPPqRD7G8ycDKg
	peKyDwmdkvCunVisSAQI3XIMq2y230biTO98tDPEezg+lg+yTsz9ZT33F5KNuWrpf8VL5fG/
	mt+kAv7wtsx/KTRbqhH3iFXF6eBSwMjAfTXFlkLfbM9riJGXrWEl9n2S2R3cDHNHug0lb8f4
	whK370KEO4OwRKIYW/VUBmzk5XZUE9DTlDSV8ycsrrkBDQRWCsRYAQgAwK3FuHCE+HW3YWdH
	PUjeSn5p//xJ57u8g2rng8zm9zNjmYgpPv5UxozaD9i2jf4mlQLHGGOezhHae8K4Nj70oVcv
	8AmwcrJa9i9WL1oy/9R3fHMWf/Ctt9VXTO0qlCuq6PDzaUfvsXR61aJIjTKNQTOjCLjY1vXm
	VSewUgARysmA8WrjTfwGBihMBxAX0+kIjx8nOlam0WvekMBXZ0AbS56oTLRxYao6DI3GeB/N
	oWPy/5DfuTKaSdM0Pf8al20x9RuNN5/HLMlyDH/k8bIa1xd9aAqW+Feiw5gC107V2E6ULyIy
	q6em2UrsmIRxrvpHqbNgQKqvTehJ+V/i4g/uOwARAQABiQEfBBgBCAAJBQJWCsRYAhsMAAoJ
	EH7+/ev69L755XAH/3ZcNhooqd9OBhFkvXm1iWZ8EoC7motWqVn2oEyxoonsg8AD9kFXiN+T
	dYp7dH99EZu9q4ptj56AXm4uHzOgywL/5/V2TY6twCGAjUGzDjAB5gzoi+JLIBlDiyOip0eL
	QswIhRk473xy3j8DA4oVamnSPWgyNJ+qsdt37YWDzoDFFvtDoRU7Eb+znfIMDKzlny0XU/8L
	cW1bNHJlpv/78GPdfP4tjysEd8MuA5jf5o5w4XqcwTqalffEJtQ/s3pbkstEi7qm5uPui5Kt
	gq6YYLSqcSNe0GWAF9/T+qwyo7burSTxUWCWtMmlXdAQLW9SynLhB3Jbch0nFAh0fCKi6yY=
Organization: Wind River Systems
Message-ID: <2811a12e-cbc0-5f19-04b5-f3ba725a3424@windriver.com>
Date: Wed, 6 Mar 2019 17:37:14 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.5.3
MIME-Version: 1.0
In-Reply-To: <CAO5Uq5T=uC7qQ3y0cYEG5iFyeA6hhvwz4bV9SOUyRnvtSEqAbQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"opkg-devel@googlegroups.com" <opkg-devel@googlegroups.com>
Subject: Re: [opkg-devel] [opkg-utils] Question: why update-alternatives from opkg-utils chooses /usr/lib to hold database?
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
X-List-Received-Date: Wed, 06 Mar 2019 23:37:20 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 3/5/19 10:44 PM, Alex Kiernan wrote:
> On Tue, Mar 5, 2019 at 10:50 PM Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
>>
>> On Tue, 2019-03-05 at 16:05 +0000, Alejandro Del Castillo wrote:
>>>
>>> On 3/5/19 12:11 AM, ChenQi wrote:
>>>> Hi All,
>>>>
>>>> Recently I'm dealing with issue from which some discussion raises.
>>>> I'd like to ask why update-alternatives from opkg-utils chooses
>>>> /usr/lib
>>>> to hold its alternatives database?
>>>> I looked into debian, its update-alternatives chooses /var/lib by
>>>> default.
>>>> Is there some design consideration? Or some historical reason?
>>>
>>> Update-alternatives used to be on the opkg repo. I did a search
>>> there
>>> all the way to the first commit on 2008-12-15 [1], but even then
>>> /usr/lib was used. I can't think of a design consideration that
>>> would
>>> make /usr/lib more palatable than the Debian default.
>>>
>>> Maybe someone with more knowledge of the previous history can chime
>>> in?
>>>
>>> [1]
>>> http://git.yoctoproject.org/clean/cgit.cgi/opkg/commit/?id=8bf49d16a637cca0cd116450dfcabc4c941baf6c
>>
>> I think the history is that the whole of /var was considered volatile
>> and we wanted the alternatives data to stick around so it was put under
>> /usr.
>>
>> That decision doesn't really make sense now since only parts of /var
>> are volatile..
>>
> 
> I don't use opkg (or in fact any package manager on a target), but I
> do use OSTree, where my /var isn't part of what gets deployed to a
> device (https://ostree.readthedocs.io/en/latest/manual/adapting-existing/#adapting-existing-package-managers)
> so having the option to keep it in /usr would be important to anyone
> who has mechanisms like that.
> 

Do you allow a device that has been sent an update via OSTree to then run
update-alternatives to change what has been set by the update mechanism?

In my own uses of both OSTree and update-alternatives, I set this on a global
basis and use it that way.  So no individual user (device) would be different
then what was globally sent out.

If this is desired, then continuing to have a mechanism to allow it to be
overridden for legacy or your purposes seems reasonable... but I think moving
the default still makes a lot of sense.

--Mark

