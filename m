Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A3EEE00CE5; Thu, 17 Jan 2019 14:50:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [81.236.60.156 listed in list.dnswl.org]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from v-smtpout3.han.skanova.net (v-smtpout3.han.skanova.net
	[81.236.60.156])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7B52E00CAD
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 14:50:06 -0800 (PST)
Received: from [10.175.196.109] ([37.123.169.62]) by cmsmtp with ESMTPA
	id kGU8gVy9FHNTSkGU8gVpCw; Thu, 17 Jan 2019 23:50:05 +0100
Mime-Version: 1.0 (1.0)
From: Ulf Samuelsson <yocto@emagii.com>
X-Mailer: iPad Mail (15F79)
In-Reply-To: <a778dc9409e589ee19f122db4069857513e3fe52.camel@linuxfoundation.org>
Date: Thu, 17 Jan 2019 23:50:04 +0100
Message-Id: <1DB4D7BE-E62D-4F13-8F8A-A5103ED5F767@emagii.com>
References: <d278856c-cba2-e63f-d50a-8f4b40365c88@emagii.com>
	<a778dc9409e589ee19f122db4069857513e3fe52.camel@linuxfoundation.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-CMAE-Envelope: MS4wfC7NrR1KW0mz+F/d6OIhLWWezg8ugL7DfnDgpsvXgJMFRuTjMiPRSPeFOGaDqZzV5BlfM+EUN+umK+VfsE2Klc/zzQTNNu16jLCYsrJeqbxIGBpDK/bR
	I5HyXLhnigo0zrGzE9Y06h8zzQtEQLYaTEwZd+WZNzypxQDofxNscr4QbqXieyhRfl2keu/7MV3nSlEhBtSgKS9eYv11v2qzY6oN5V9HyZVKy1tZG+GDcGBZ
	w6PFxuD4YCT01vOaLzyNvihNXI2zLnY+CT9ZLRw55zs=
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] bb.build.addtask: add simple check for circular dependency
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
X-List-Received-Date: Thu, 17 Jan 2019 22:50:09 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable



> 17 jan. 2019 kl. 22:05 skrev Richard Purdie <richard.purdie@linuxfoundatio=
n.org>:
>=20
>> On Thu, 2019-01-17 at 19:15 +0100, Ulf Samuelsson wrote:
>> =46rom 864e49bedbdab480c5ada9588ce8f980f23919dd Mon Sep 17 00:00:00
>> 2001
>> From: Ulf Samuelsson <ulf@emagii.com>
>> Date: Thu, 17 Jan 2019 19:07:17 +0100
>> Subject: [PATCH] bb.build.addtask: add simple check for circular
>> dependency
>=20
> We really can't hardcode a list of tasks like this in bitbake :(
>=20
> The list is also incorrect (at a quick look its packagedata and
> populate_sysroot is missing).

I would say it may be incomplete, but it is only wrong, if they are in the w=
rong order.

>=20
> We'll need to come up with a better algorithm than this. From
> experience with circular task dependencies within bitbake's runqueue,
> this is a hard problem though.

It is an attempt to do a reasonable effort.
It will not handle a lot of user tasks which depends on each other for sure.=
..
Is it better to have no detection, than a detection which works on the most c=
ommon cases?
I will not have the time to look into a clean cover all cases algorithm, unf=
ortunately.

Best Regards,
Ulf Samuelsson
>=20
> Cheers,
>=20
> Richard
>=20
>> Signed-off-by: Ulf Samuelsson <ulf@emagii.com>
>> ---
>>  bitbake/lib/bb/build.py | 48=20
>> ++++++++++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 48 insertions(+)
>>=20
>> diff --git a/bitbake/lib/bb/build.py b/bitbake/lib/bb/build.py
>> index 3e2a94e..887ced1 100644
>> --- a/bitbake/lib/bb/build.py
>> +++ b/bitbake/lib/bb/build.py
>> @@ -43,6 +43,25 @@ logger =3D logging.getLogger('BitBake.Build')
>>=20
>>  __mtime_cache =3D {}
>>=20
>> +KNOWN_TASKS =3D {
>> +    'do_fetch' :           1 ,
>> +    'do_unpack' :          2 ,
>> +    'do_patch' :           3 ,
>> +    'do_configure' :       4 ,
>> +    'do_compile' :         5 ,
>> +    'do_install' :         6 ,
>> +    'do_package' :         7 ,
>> +    'do_package_data' :    8 ,
>> +    'do_rootfs' :          9 ,
>> +    'do_image_qa' :       10 ,
>> +    'do_image' :          11 ,
>> +    'do_image_tar' :      12 ,
>> +    'do_image_ubifs' :    12 ,
>> +    'do_image_jffs2' :    12 ,
>> +    'do_image_complete' : 13 ,
>> +    'do_build' :          14
>> +}
>> +
>>  def cached_mtime_noerror(f):
>>      if f not in __mtime_cache:
>>          try:
>> @@ -820,7 +839,34 @@ def add_tasks(tasklist, d):
>>      # don't assume holding a reference
>>      d.setVar('_task_deps', task_deps)
>>=20
>> +def circular(after, before):
>> +    if after =3D=3D None:
>> +        return False
>> +    if before =3D=3D None:
>> +        return False
>> +    for a in after.split():
>> +        if a in KNOWN_TASKS:
>> +            for b in before.split():
>> +                if a =3D=3D b:
>> +                    return True
>> +                if b in KNOWN_TASKS:
>> +                    if KNOWN_TASKS[b] < KNOWN_TASKS[a]:
>> +                        return True
>> +                    else:
>> +                        # tasks OK
>> +                        pass
>> +                else:
>> +                    # b is unknown
>> +                    pass
>> +        else:
>> +            # a is unknown
>> +            pass
>> +
>>  def addtask(task, before, after, d):
>> +    if circular(after, before):
>> +        logger.error("addtask: %s cannot be after %s and before %s"
>> %=20
>> (task, after, before))
>> +        raise
>> +
>>      if task[:3] !=3D "do_":
>>          task =3D "do_" + task
>>=20
>> @@ -909,3 +955,5 @@ def tasksbetween(task_start, task_end, d):
>>          chain.pop()
>>      follow_chain(task_start, task_end)
>>      return outtasks
>> +
>> +
>=20


