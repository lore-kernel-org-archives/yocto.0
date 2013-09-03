Return-Path: <lothar@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B2C6E0148D
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2013 04:57:32 -0700 (PDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3cTmqt3F5Vz4KK2p
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2013 13:57:30 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3cTmqt1mqpzbblg
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2013 13:57:30 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024) with ESMTP id lmkDX5RKaBZK for <yocto@yoctoproject.org>;
	Tue,  3 Sep 2013 13:57:28 +0200 (CEST)
X-Auth-Info: ByaD2zyGVwA+SlymTpBmeqid15nk1MnXQ3PVckJLjDU=
Received: from webmail.mnet-online.de (webmail1.mnet-online.de
	[62.245.181.162]) by mail.mnet-online.de (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2013 13:57:28 +0200 (CEST)
Received: from host-82-135-33-74.customer.m-online.net ([82.135.33.74])
	by webmail.mnet-online.de
	with HTTP (HTTP/1.1 POST); Tue, 03 Sep 2013 11:57:25 +0000
MIME-Version: 1.0
Date: Tue, 03 Sep 2013 13:57:25 +0200
From: lothar@denx.de
To: yocto@yoctoproject.org
In-Reply-To: <0C95222C-9247-4FDD-837C-83FB03A314AC@keylevel.com>
References: <52241C84.2090605@gna.org>
	<CAJTo0LZSkA5Gr4AkaFEAuG0irsLWfeUkO2jXmmBXHJ6qcaGN_w@mail.gmail.com>
	<522506F8.8060706@gna.org>
	<0C95222C-9247-4FDD-837C-83FB03A314AC@keylevel.com>
Message-ID: <0124f45705241361176f9e323c716763@denx.de>
X-Sender: lothar@denx.de
User-Agent: Roundcube Webmail/0.9.3
Subject: Re: Server specs for a continuous integration system
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
X-List-Received-Date: Tue, 03 Sep 2013 11:57:35 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

Am 2013-09-03 00:16, schrieb Chris Tapp:
> On 2 Sep 2013, at 22:45, Christian Gagneraud wrote:
> 
>> 
>> On 03/09/13 00:35, Burton, Ross wrote:
>> 
>> Hi Ross,
>> 
>>> On 2 September 2013 06:05, Christian Gagneraud <chgans@gna.org> 
>>> wrote:
>>>> So right now, I'm thinking about:
>>>> - CPU: Xeon E5, maybe 2 x E5-2670/90, for a total of 16 cores (32 
>>>> threads)
>>>> - Hard drives: 500GB, 1 TB or 2 TB (ideally with RAID if it can 
>>>> speed up the
>>>> builds)
>> 
>> RAID-5 seems to be what i am after.
> 
> Isn't RAID-5 going to be slower, especially if it's software? RAID 1
> is probably better as you'll potentially double the write speed to
> disk. I use a couple of Vertex SSDs in RAID 1 giving a theoretical
> write speed near to 1GBs. Write endurance is possibly a concern, but
> I've not had any issues using them on a local build machine. I would
> probably look at some higher end models if I was going to run a lot of
> builds. A lot less noise than hard drives ;-)

Hi, this sounds interesting to me.

Having a brief look into wikipedia ( http://en.wikipedia.org/wiki/RAID ) 
  tells me that RAID-1 gives no increase in write speed at all (for 
sequentioal operations), by theory: 1x   ...while a RAID-5 at least in 
theory, should give you: (n-1)x, assumed the hardware is fast enough to 
support it (RAID controller!).

Having had a small conversation here, I was told we even made 
experiences on having HW RAID being slowed down by the RAID controller, 
and its limitation of I/O-operations, that still could be handled. So, 
it seems to me one motivation why using SW RAID instead of HW RAID is 
exactly to overcome this limitations of having the bottleneck of a RAID 
controllers.

Question, running RAID-5, have you tried to adjust the chunck size? In 
our case most I/O operations are on relatively small text files and may 
require some adjustment to the RAID chunck size value in respect to that 
fact.

BR,
Lothar Rubusch

