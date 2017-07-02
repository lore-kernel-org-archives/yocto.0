Return-Path: <pierre.ficheux@smile.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAE42E00BBD; Sun,  2 Jul 2017 01:01:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [91.216.209.19 listed in list.dnswl.org]
Received: from idris.smile.fr (idris.smile.fr [91.216.209.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5579BE00AD5
	for <yocto@yoctoproject.org>; Sun,  2 Jul 2017 01:01:02 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by idris.smile.fr (Postfix) with ESMTP id 3A4731EE3218;
	Sun,  2 Jul 2017 10:01:00 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at smile.fr
Received: from idris.smile.fr ([127.0.0.1])
	by localhost (bluemind-mta.prod.vitry.intranet [127.0.0.1])
	(amavisd-new, port 10024)
	with ESMTP id rLvW+VHg7IdM; Sun,  2 Jul 2017 10:01:00 +0200 (CEST)
Received: from bluemind.smile.fr (bluemind.prod.vitry.intranet [10.10.1.35])
	by idris.smile.fr (Postfix) with ESMTPS id 19B2C1EE31F9;
	Sun,  2 Jul 2017 10:01:00 +0200 (CEST)
Received: from localhost.localdomain (localhost [127.0.0.1])
	by bluemind.smile.fr (Postfix) with ESMTP id 0712C54604CA;
	Sun,  2 Jul 2017 10:01:00 +0200 (CEST)
MIME-Version: 1.0
Date: Sun, 02 Jul 2017 10:01:00 +0200
From: Pierre FICHEUX <pierre.ficheux@smile.fr>
To: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <031b6952-b6af-125b-fbf4-414d6f76e1bc@gmail.com>
References: <1498895529-24192-1-git-send-email-pierre.ficheux@smile.fr>
	<031b6952-b6af-125b-fbf4-414d6f76e1bc@gmail.com>
Message-ID: <c8fd25910666decb8e5dcf5ad23414ec@smile.fr>
X-Sender: pierre.ficheux@smile.fr
User-Agent: Roundcube Webmail/0.8.5
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] Added missing LDFLAGS in sample recipe for morty branch
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
X-List-Received-Date: Sun, 02 Jul 2017 08:01:06 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit

Hi,

Yes but it was fixed that way in the Pyro branch.

do_compile() {
              ${CC} ${LDFLAGS} helloworld.c -o helloworld
}

regards

-- 
Pierre FICHEUX -/- CTO Smile-ECS, France -\- pierre.ficheux@smile.fr
                                     http://www.smile.fr
                                     http://ingenierie.openwide.fr
I would love to change the world, but they won't give me the source 
code

Le 2017-07-01 16:53, Khem Raj a écrit :
> On 7/1/17 12:52 AM, Pierre FICHEUX wrote:
>> This problem causes the following error :
>> 
>> ERROR: example-0.1-r0 do_package_qa: QA Issue: No GNU_HASH in the elf 
>> binary
>> 
>> Signed-off-by: Pierre FICHEUX <pierre.ficheux@smile.fr>
>> ---
>>  .../target/arch/layer/recipes-example/example/example-recipe-0.1.bb  
>>   | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git 
>> a/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb 
>> b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb
>> index 5fbf594..e534d36 100644
>> --- 
>> a/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb
>> +++ 
>> b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb
>> @@ -14,7 +14,7 @@ SRC_URI = "file://helloworld.c"
>>  S = "${WORKDIR}"
>> 
>>  do_compile() {
>> -	     ${CC} helloworld.c -o helloworld
>> +	     ${CC} ${LDFLAGS} helloworld.c -o helloworld
> 
> perhaps doing compile and link in two steps where CFLAGS and LDFLAGS 
> are
> used would be clearer
> 
> something like
> 
> ${CC} ${CFLAGS} -c helloworld.c -o helloworld.o
> ${LD} ${LDFLAGS} helloworld.o -o helloworld
> 
> 
>>  }
>> 
>>  do_install() {
>> 

