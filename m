Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE2ECE00A0C; Mon, 15 Oct 2018 11:45:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0D25E003D9
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2018 11:45:06 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 7671512B320;
	Mon, 15 Oct 2018 20:45:05 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 6ekkk1Bp0Rya; Mon, 15 Oct 2018 20:45:04 +0200 (CEST)
Received: from emcodev.nl (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id E24D112B19C;
	Mon, 15 Oct 2018 20:45:04 +0200 (CEST)
MIME-Version: 1.0
Date: Mon, 15 Oct 2018 20:45:04 +0200
From: Bas Mevissen <abuse@basmevissen.nl>
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0LYbBU4s7w7TEDJwt6Wp8Vr9bsFCxmf1WYM-sX_=5wWkDA@mail.gmail.com>
References: <CAAfyv36x=np5fcK96ozCHoXe-CFjvpMTdJDA4shpXBMRvd10Hg@mail.gmail.com>
	<CAJTo0LYbBU4s7w7TEDJwt6Wp8Vr9bsFCxmf1WYM-sX_=5wWkDA@mail.gmail.com>
Message-ID: <f0a632a1a5264a72d4be11ee371f7d64@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
User-Agent: Roundcube Webmail/1.3.7
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: permissions when installing scripts
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
X-List-Received-Date: Mon, 15 Oct 2018 18:45:08 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit



cp -a or --preserve(=<something>) optionally combined with other options 
does the trick. However, using install is the better solution.


-- Bas.

On 2018-10-15 14:35, Burton, Ross wrote:
> As you've discovered, cp doesn't preserve permissions.  Using install
> -m755 is the idiom.
> 
> Ross
> On Mon, 15 Oct 2018 at 11:12, Belisko Marek <marek.belisko@gmail.com> 
> wrote:
>> 
>> Hi,
>> 
>> I have package which contains bunch of scripts (with +x flag for
>> user). When installed in do_install method (simply by copying them to
>> destination) they loose +x flag. I know copying directly is not best
>> approach but there exists better way how to keep scripts permissions
>> like in repo (except calling install -m 755 for all of them)? Thanks.
>> 
>> BR,
>> 
>> marek
>> 
>> --
>> as simple and primitive as possible
>> -------------------------------------------------
>> Marek Belisko - OPEN-NANDRA
>> Freelance Developer
>> 
>> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
>> Tel: +421 915 052 184
>> skype: marekwhite
>> twitter: #opennandra
>> web: http://open-nandra.com
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


