Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E69DE00945; Sun,  2 Oct 2016 17:12:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	URIBL_RED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: codesourcery.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 529BFE0089B
	for <yocto@yoctoproject.org>; Sun,  2 Oct 2016 17:12:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u930CL58013519
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 2 Oct 2016 17:12:21 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Sun, 2 Oct 2016 17:12:20 -0700
To: Khem Raj <raj.khem@gmail.com>, Joseph Myers <joseph@codesourcery.com>
References: <alpine.DEB.2.20.1609142321590.14953@digraph.polyomino.org.uk>
	<73509D8A-9707-46A9-8C2D-F7BB69131961@gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <e7b084ca-8e32-1314-01ac-2ed1f68c6f8e@windriver.com>
Date: Sun, 2 Oct 2016 19:12:19 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <73509D8A-9707-46A9-8C2D-F7BB69131961@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [prelink-cross] Support x32 libx32 directory
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
X-List-Received-Date: Mon, 03 Oct 2016 00:12:28 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 10/2/16 6:18 PM, Khem Raj wrote:
> Mark
> 
> have we integrated this patch ?

I have not yet.  Continue to ping me, I should hopefully get to it this week.

--Mark

>> On Sep 14, 2016, at 4:23 PM, Joseph Myers <joseph@codesourcery.com> wrote:
>>
>> Cross-prelink's prelink-rtld is missing suport for the /libx32
>> directory used with the x86_64 x32 ABI.  This patch adds such support.
>>
>> 2016-09-14  Joseph Myers  <joseph@codesourcery.com>
>>
>> 	* src/rtld/rtld.c (load_ld_so_conf): Add argument use_x32.
>> 	(main): Update call to load_ld_so_conf.
>>
>> diff --git a/src/rtld/rtld.c b/src/rtld/rtld.c
>> index 8d7d760..2d72083 100644
>> --- a/src/rtld/rtld.c
>> +++ b/src/rtld/rtld.c
>> @@ -409,7 +409,7 @@ free_path (struct search_path *path)
>> }
>>
>> void
>> -load_ld_so_conf (int use_64bit, int use_mipsn32)
>> +load_ld_so_conf (int use_64bit, int use_mipsn32, int use_x32)
>> {
>>   int fd;
>>   FILE *conf;
>> @@ -435,6 +435,14 @@ load_ld_so_conf (int use_64bit, int use_mipsn32)
>>       add_dir (&ld_dirs, "/usr/lib32/tls", strlen ("/usr/lib32/tls"));
>>       add_dir (&ld_dirs, "/usr/lib32", strlen ("/usr/lib32"));
>>     }
>> +  else if (use_x32)
>> +    {
>> +      dst_LIB = "libx32";
>> +      add_dir (&ld_dirs, "/libx32/tls", strlen ("/libx32/tls"));
>> +      add_dir (&ld_dirs, "/libx32", strlen ("/libx32"));
>> +      add_dir (&ld_dirs, "/usr/libx32/tls", strlen ("/usr/libx32/tls"));
>> +      add_dir (&ld_dirs, "/usr/libx32", strlen ("/usr/libx32"));
>> +    }
>>   else
>>     {
>>       dst_LIB = "lib";
>> @@ -1195,7 +1203,8 @@ main(int argc, char **argv)
>> 	}
>>
>>       load_ld_so_conf (gelf_getclass (dso->elf) == ELFCLASS64,
>> -		( dso->ehdr.e_machine == EM_MIPS) && ( dso->ehdr.e_flags & EF_MIPS_ABI2 ) );
>> +		( dso->ehdr.e_machine == EM_MIPS) && ( dso->ehdr.e_flags & EF_MIPS_ABI2 ),
>> +		dso->ehdr.e_machine == EM_X86_64 && gelf_getclass (dso->elf) == ELFCLASS32);
>>
>>       if (multiple)
>> 	printf ("%s:\n", argv[remaining]);
>>
>> --
>> Joseph S. Myers
>> joseph@codesourcery.com
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 


