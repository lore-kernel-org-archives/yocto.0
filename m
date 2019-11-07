Return-Path: <norbert.kaminski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1087BE00C0A; Thu,  7 Nov 2019 08:06:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,BODY_URI_ONLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [178.33.253.54 listed in list.dnswl.org]
	* 1.0 BODY_URI_ONLY Message body is only a URI in one line of text or
	for *      an image
X-Greylist: delayed 971 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Nov 2019 08:06:15 PST
Received: from 7.mo4.mail-out.ovh.net (7.mo4.mail-out.ovh.net [178.33.253.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 493E0E00B8E
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2019 08:06:15 -0800 (PST)
Received: from player159.ha.ovh.net (unknown [10.109.143.249])
	by mo4.mail-out.ovh.net (Postfix) with ESMTP id 20C34211BF2
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2019 16:50:03 +0100 (CET)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: norbert.kaminski@3mdeb.com)
	by player159.ha.ovh.net (Postfix) with ESMTPSA id 45634BC78560;
	Thu,  7 Nov 2019 15:49:59 +0000 (UTC)
To: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>, yocto@yoctoproject.org
References: <086a4d32-e2b7-3139-f32d-2411c10a31b2@3mdeb.com>
	<fd7d311d-b202-e93e-9bc5-07dfbb47ea95@3mdeb.com>
From: Norbert Kaminski <norbert.kaminski@3mdeb.com>
Message-ID: <5ad2c88d-9113-6179-cadc-c4839169882c@3mdeb.com>
Date: Thu, 7 Nov 2019 16:49:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <fd7d311d-b202-e93e-9bc5-07dfbb47ea95@3mdeb.com>
X-Ovh-Tracer-Id: 4407335189046467020
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudduledgkedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdqfffguegfifdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepuffvfhfhkffffgggjggtgfesthekredttdefjeenucfhrhhomheppfhorhgsvghrthcumfgrmhhinhhskhhiuceonhhorhgsvghrthdrkhgrmhhinhhskhhiseefmhguvggsrdgtohhmqeenucfkpheptddrtddrtddrtddpkeehrddvvddvrdduudejrddvvddvnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhduheelrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepnhhorhgsvghrthdrkhgrmhhinhhskhhiseefmhguvggsrdgtohhmpdhrtghpthhtohephihotghtoheshihotghtohhprhhojhgvtghtrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
Cc: piotr.krol@3mdeb.com
Subject: Re: [meta-security][PATCH] meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb: add new udev dir to FILES and append EXTRA_OECONF
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
X-List-Received-Date: Thu, 07 Nov 2019 16:06:16 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US


On 07.11.2019 16:41, Maciej Pijanowski wrote:
> On 07.11.2019 16:14, Norbert Kaminski wrote:
>> The tpm2 tool freezes in a XEN distro. It stores the udev rules in
>> /lib/udev directory,
>> thus these changes append the FILES and EXTRA_OECONF to make tpm2 work
>> properly.
>>
>> Signed-off-by: Norbert Kaminski <norbert.kaminski@3mdeb.com>
>> ---
>>   meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb | 4 +++-
>>   1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb
>> b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb
>> index 3e77f71..10450e3 100644
>> --- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb
>> +++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb
>> @@ -74,6 +74,8 @@ FILES_libtss2-dev = " \
>>       ${libdir}/libtss2*so"
>>   FILES_libtss2-staticdev = "${libdir}/libtss*a"
>>
>> -FILES_${PN} = "${libdir}/udev"
>> +FILES_${PN} = "${libdir}/udev ${base_prefix}/lib/udev"
>> +
>> +EXTRA_OECONF += "--with-udevrulesdir=${base_prefix}/lib/udev/rules.d/"
> I suspect the problem appears when building for machine where libdir is
> /usr/lib64, not /usr/lib?
Yes, that is right.
> It is likely not related to Xen in any way.
>>   RDEPENDS_libtss2 = "libgcrypt"

