Return-Path: <442-103-8455@kylheku.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44AB2E00D01; Sat,  9 Mar 2019 08:20:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	FROM_STARTS_WITH_NUMS,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.7 FROM_STARTS_WITH_NUMS From: starts with several numbers
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [64.59.134.12 listed in list.dnswl.org]
Received: from smtp-out-no.shaw.ca (smtp-out-no.shaw.ca [64.59.134.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC1A6E00BE8
	for <yocto@yoctoproject.org>; Sat,  9 Mar 2019 08:20:08 -0800 (PST)
Received: from kylheku.com ([70.79.163.252]) by shaw.ca with ESMTPA
	id 2ehhhI936nP042ehjhDYac; Sat, 09 Mar 2019 09:20:07 -0700
X-Authority-Analysis: v=2.3 cv=EK14LGRC c=1 sm=1 tr=0
	a=95A0EdhkF1LMGt25d7h1IQ==:117 a=95A0EdhkF1LMGt25d7h1IQ==:17
	a=IkcTkHD0fZMA:10 a=SMorJkV_YP8A:10 a=NTGMnVQrEZIA:10
	a=ReDXNHCV1EYKDKgbbkgA:9 a=QEXdDO2ut3YA:10
Received: from www-data by kylheku.com with local (Exim 4.72)
	(envelope-from <442-103-8455@kylheku.com>)
	id 1h2ehh-0001ry-Q9; Sat, 09 Mar 2019 08:20:05 -0800
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-PHP-Originating-Script: 501:rcmail.php
MIME-Version: 1.0
Date: Sat, 09 Mar 2019 08:20:05 -0800
From: "Kaz Kylheku (poky)" <442-103-8455@kylheku.com>
In-Reply-To: <555b1f4c55fdcf63946b2ebc14b73611ffb300d1.camel@linuxfoundation.org>
References: <5be9f511c95ccc7037d99cf809c21894@mail.kylheku.com>
	<555b1f4c55fdcf63946b2ebc14b73611ffb300d1.camel@linuxfoundation.org>
Message-ID: <7c67a4d64ce5e6e036f9a31fc68f0fcb@mail.kylheku.com>
X-Sender: 442-103-8455@kylheku.com
User-Agent: Roundcube Webmail/0.9.2
X-CMAE-Envelope: MS4wfC+vb3JAdgXvTCoTkPyJ8ZWRD/7GbXSAnVHMmU90a+bF8ffNSKA5bB4mcpZ2/1J0WyVq8/uZFxKNXqv0lkjzOp+PIQY01Qeje1ojwxsgZZia3P3MhzvC
	S0BdV4iggSmpHKKZr2MszVHpj8kcz0q5I/H1VU9+p6xKmIWgRAvz+PTi4ogLJTuwodHgygptFbKlhXWDgKV+SpD8LQisS2XFdNl6ls4LTk9c+QiZ02+EUN4x
Cc: yocto@yoctoproject.org
Subject: Re: New: "extrapatches" bbclass.
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
X-List-Received-Date: Sat, 09 Mar 2019 16:20:09 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

On 2019-03-09 02:01, Richard Purdie wrote:
> On Thu, 2019-03-07 at 19:26 -0800, Kaz Kylheku (poky) wrote:
>> #
>> # extrapatches bbclass
>> #
>> # This bbclass allows for a recipe to apply additional patches.
>> #
>> # "Additional patches" refers to patches that are not individually
>> # fetched by the SRC_URI mechanism, but are already present
>> # inside the source trees that are fetched and unpacked.
>> # Referring directly to recipe-side patches
>> # without fetching them via SRC_URI is also possible.
>> #
>> # How to use this class:
>> #
>> #   1. Add   inherit extrapatches   to your recipe.
>> #   2. Optionally set the EXTRAPATCHES_WORKDIR,
>> #   3. List the patches in EXTRAPATCHES in order of application.
>> #      - Relative paths are interpreted relative to
>> EXTRAPATCHES_WORKDIR.
>> #      - Absolute paths are allowed
>=20
> Can't you already do this if you put a file:// url in SRC_URI for the
> patch as its unpacked in the workdir?

That doesn't work due SRC_URI materials not being fetched and unpacked=20
in left-to-right order, but in separate do_fetch and do_unpack phases.


