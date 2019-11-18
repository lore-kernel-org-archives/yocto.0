Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DF7CE00875; Mon, 18 Nov 2019 13:45:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [46.105.35.72 listed in list.dnswl.org]
X-Greylist: delayed 2343 seconds by postgrey-1.32 at yocto-www;
	Mon, 18 Nov 2019 13:45:50 PST
Received: from 18.mo1.mail-out.ovh.net (18.mo1.mail-out.ovh.net [46.105.35.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C452FE007D4
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 13:45:50 -0800 (PST)
Received: from player756.ha.ovh.net (unknown [10.108.57.188])
	by mo1.mail-out.ovh.net (Postfix) with ESMTP id 6416119A38A
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 22:06:46 +0100 (CET)
Received: from 3mdeb.com (89-66-81-201.dynamic.chello.pl [89.66.81.201])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player756.ha.ovh.net (Postfix) with ESMTPSA id A85C9B6F4B74;
	Mon, 18 Nov 2019 21:06:44 +0000 (UTC)
To: yocto@yoctoproject.org
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Message-ID: <ba34dac7-a925-6ceb-b98f-5cf5c527a45f@3mdeb.com>
Date: Mon, 18 Nov 2019 22:06:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.2
MIME-Version: 1.0
X-Ovh-Tracer-Id: 569142403616288460
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudegiedguddvfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjqdffgfeufgfipdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepvffhuffkffgfgggtgfesthejredttdefjeenucfhrhhomhepofgrtghivghjucfrihhjrghnohifshhkihcuoehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmqeenucffohhmrghinhepfehmuggvsgdrtghomhdphihotghtohhprhhojhgvtghtrdhorhhgnecukfhppedtrddtrddtrddtpdekledrieeirdekuddrvddtudenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeehiedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmpdhrtghpthhtohephihotghtoheshihotghtohhprhhojhgvtghtrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
Cc: "piotr.krol@3mdeb.com" <piotr.krol@3mdeb.com>
Subject: GRUB without UEFI
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
X-List-Received-Date: Mon, 18 Nov 2019 21:45:54 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi,

I'm wondering whether anyone here uses Yocto to build images
for legacy x86 systems (without UEFI) with GRUB as a bootloader.
I know that the GRUB with UEFI is well supported in Yocto.

I'm looking for a way to create a bootable disk (ideally using WIC)
for legacy BIOS with GRUB preinstalled.

i know there is a bootimg-pcbios wic plugin:
http://git.yoctoproject.org/cgit.cgi/poky/tree/scripts/lib/wic/plugins/source/bootimg-pcbios.py?id=38125456ffa6112941a3608fcba9ed2032353740
which uses SYSLINUX.

Thoughts welcome.

Thanks

-- 
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com


