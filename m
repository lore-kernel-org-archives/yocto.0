Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3A68E00C4D; Mon, 10 Dec 2018 08:13:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24839E00C10
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2018 08:13:39 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id wBAGCo9s032549
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 10 Dec 2018 08:13:00 -0800
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Mon, 10 Dec 2018 08:12:38 -0800
To: madoga <madoga@protonmail.com>
References: <T9S3hRvMw_5pENs_xGzABmQbU_6FXXTtPnPwIWfY9FWVlsXo7SN3XOQ58JyP9AVLVdsnZjYe_jRhCOSjR1NNXy4Q86fFWF-DM0c_oCCSvtk=@protonmail.com>
	<bb0bcf7f-7250-9f74-b191-d057496942e9@windriver.com>
	<gYPGW9AlaXI8UYYprw9Q8lCvlQx05jxnlgKFgK2gkrD07YPNUn4grABgAhEF98IhdVUjWq72DRZez0lSyNWiBRIL19NHEo57JUWSlhfKPS0=@protonmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Openpgp: preference=signencrypt
Autocrypt: addr=mark.hatle@windriver.com; prefer-encrypt=mutual; keydata=
	xsBNBFYKxFgBCACt/pzutBp6p/xVKTFJjHbM3KpQKCblyot/YP+bpTr51Hrc5xDXBQhoG7TC
	aIRvRIvbhEevEQK9y04gW3JK/5lobq5ORebolcsHlYBUvpNeIPjupLQwGvz/TPtrLRNGLqDC
	rvsM6OA2XbQ2bwzxWaSQS3ImE2O2iXOZn9HhThMGeDB4Nff3fgUvXOTDIrgWOn9K2DgLL7Yc
	zkUIlFdj+Nraksd/7BSk8oH6tjeBVhFqSFvKta9QxWgdr58oPaTYaW/xNqUjlLrbJuMw/MSe
	xzuYfdfDfm6J8kRjMOnwQ0n8svJElzqAk+d83ow38gpGQ+LkjGgnf8ZFJ4rUJFADroX3ABEB
	AAHNJU1hcmsgSGF0bGUgPG1hcmsuaGF0bGVAd2luZHJpdmVyLmNvbT7CwHcEEwEIACEFAlYK
	xFgCGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4AACgkQfv796/r0vvlvZAf9Gs+eN320yhRW
	V/fZCsngKhmOK4v3HrTwFrkSmoD9QHQiE/5IPdNacHwIPwZx07tNBohB8xOeNqCPRYRBwGhA
	AnxKOPyd0nnm6ZhPzbA57v4x3IGRQr4QzvcBTASJq91l3Ew4lpAslyx5w1DPPqRD7G8ycDKg
	peKyDwmdkvCunVisSAQI3XIMq2y230biTO98tDPEezg+lg+yTsz9ZT33F5KNuWrpf8VL5fG/
	mt+kAv7wtsx/KTRbqhH3iFXF6eBSwMjAfTXFlkLfbM9riJGXrWEl9n2S2R3cDHNHug0lb8f4
	whK370KEO4OwRKIYW/VUBmzk5XZUE9DTlDSV8ycsrs7ATQRWCsRYAQgAwK3FuHCE+HW3YWdH
	PUjeSn5p//xJ57u8g2rng8zm9zNjmYgpPv5UxozaD9i2jf4mlQLHGGOezhHae8K4Nj70oVcv
	8AmwcrJa9i9WL1oy/9R3fHMWf/Ctt9VXTO0qlCuq6PDzaUfvsXR61aJIjTKNQTOjCLjY1vXm
	VSewUgARysmA8WrjTfwGBihMBxAX0+kIjx8nOlam0WvekMBXZ0AbS56oTLRxYao6DI3GeB/N
	oWPy/5DfuTKaSdM0Pf8al20x9RuNN5/HLMlyDH/k8bIa1xd9aAqW+Feiw5gC107V2E6ULyIy
	q6em2UrsmIRxrvpHqbNgQKqvTehJ+V/i4g/uOwARAQABwsBfBBgBCAAJBQJWCsRYAhsMAAoJ
	EH7+/ev69L755XAH/3ZcNhooqd9OBhFkvXm1iWZ8EoC7motWqVn2oEyxoonsg8AD9kFXiN+T
	dYp7dH99EZu9q4ptj56AXm4uHzOgywL/5/V2TY6twCGAjUGzDjAB5gzoi+JLIBlDiyOip0eL
	QswIhRk473xy3j8DA4oVamnSPWgyNJ+qsdt37YWDzoDFFvtDoRU7Eb+znfIMDKzlny0XU/8L
	cW1bNHJlpv/78GPdfP4tjysEd8MuA5jf5o5w4XqcwTqalffEJtQ/s3pbkstEi7qm5uPui5Kt
	gq6YYLSqcSNe0GWAF9/T+qwyo7burSTxUWCWtMmlXdAQLW9SynLhB3Jbch0nFAh0fCKi6yY=
Organization: Wind River Systems
Message-ID: <d3949cbc-5155-202d-8591-23319220b21e@windriver.com>
Date: Mon, 10 Dec 2018 10:12:38 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:52.0)
	Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <gYPGW9AlaXI8UYYprw9Q8lCvlQx05jxnlgKFgK2gkrD07YPNUn4grABgAhEF98IhdVUjWq72DRZez0lSyNWiBRIL19NHEo57JUWSlhfKPS0=@protonmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [OE-core] FILESYSTEM_PERMS_TABLE / fs-perms.txt
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
X-List-Received-Date: Mon, 10 Dec 2018 16:13:40 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 12/10/18 4:14 AM, madoga wrote:
>> On 12/5/18 11:12 AM, madoga wrote:
>>
>>> Hello List,
>>> I am trying to configure my entire filesystem by using FILESYSTEM_PERMS_TABLES
>>> variable pointing to my custom fs-perms.txt, but it does not work. While I
>>> debugged package.bbclass looking for any error or failure, I found something
>>> strange with os.chmod & os.lchown methods (at function fix_perms):
>>> # Fix the permission, owner and group of path
>>> def fix_perms(path, mode, uid, gid, dir):
>>> if mode and not os.path.islink(path):
>>> #bb.note("Fixup Perms: chmod 0%o %s" % (mode, dir))
>>> os.chmod(path, mode)
>>> # -1 is a special value that means don't change the uid/gid
>>> # if they are BOTH -1, don't bother to lchown
>>> if not (uid == -1 and gid == -1):
>>> #bb.note("Fixup Perms: lchown %d:%d %s" % (uid, gid, dir))
>>> os.lchown(path, uid, gid)
>>> I have hardcoded mode variable to “0333”, just for testing: os.chmod(path,
>>> 0o333)and I have seen that permissions were been configured into a “0711”. Also
>>> I am going to ask about os.lchown, due to my filesystem is still been owned by
>>> my user and my group.
>>> Does anyone have an idea about what is going on? Has somebody have the same
>>> problem?
>>
>> The commands run under the pseudo environment. Pseudo captures these commands
>> and stores them in a database it can 'replay' at any time.
>>
>> It only make them in the actual filesystem if permitted by the host.
>>
>> You must look at the filesystem results in the live system (running pseudo) or
>> in the results of the build -- otherwise what you are looking at is not valid.
>>
>> (BTW this is the reason that the commended code was left in that function. In
>> case something is wrong, just remove the comments and you'll get notes on what
>> it is doing to help debug. This shouldn't be necessary unless you are
>> developing the function itself.. but that is why they are there.)
>>
> 
> Thank you for your reply Mark!

pseudo replaces fakeroot.  Fakeroot can't capture some of the items that are
needed [and a few other reasons).

> Does the pseudo environment allow to set the entire rootfs by using fakeroot? Perhaps this is not the right way to make it, I am not pretty sure about that. I would like to obtain my rfs with a concrete permissions when bitbake finishes, folders, executables... Is there another/better way to accomplish?

psuedo is just a LD_PRELOAD library that is connected to a database that
captures permissions changes to files..

> About debbuging bb.notes, I have already removed the comments and everything seems working OK.

This tells me that it's likely working properly and you are not in the pseudo
environment.  You need to be in that loaded environment with the correct
database attached to look at the set permissions.  Any task in the system
prefixed by 'fakeroot' will do this for you.

--Mark

> Best Regards,
> Mario
> 
>> --Mark
>>
>>> Thank you
>>> Best Regards,
>>> Mario
> 
> 


