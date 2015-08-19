Return-Path: <Siva.Borra@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6506E00AE4; Wed, 19 Aug 2015 02:01:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 576A1E00AD7
	for <yocto@yoctoproject.org>; Wed, 19 Aug 2015 02:01:11 -0700 (PDT)
Received: from [172.16.141.161] (172.16.141.161) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 19 Aug 2015 11:01:05 +0200
Message-ID: <55D445D1.7070001@enea.com>
Date: Wed, 19 Aug 2015 11:01:05 +0200
From: Siva Borra <siva.borra@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>, Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
References: <1434640961-16848-1-git-send-email-siva.borra@enea.com>
	<1434640961-16848-2-git-send-email-siva.borra@enea.com>
	<A075AD98-8F2B-4C8C-BA97-277DD8839AC3@gmail.com>
In-Reply-To: <A075AD98-8F2B-4C8C-BA97-277DD8839AC3@gmail.com>
X-Originating-IP: [172.16.141.161]
Cc: issues@enea.com, Yocto discussion list <yocto@yoctoproject.org>,
	linux@list.enea.se
Subject: Re: [PATCHv2 1/1] Disable parallel build for umip.
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
X-List-Received-Date: Wed, 19 Aug 2015 09:01:15 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable



On 2015-08-16 10:12, Khem Raj wrote:
>> On Jun 23, 2015, at 7:00 AM, Alexandru.Vaduva <Alexandru.Vaduva@enea.com=
> wrote:
>>
>> From: Siva Borra <siva.borra@enea.com>
>>
>> umip build fails due to parallel build order issue,
>> hence disabling the same.
> which stage does it fail ? if its in install stage then you can disable
> it just for install task by
> PARALLEL_MAKEINST =3D =E2=80=9C=E2=80=9D and let compile task still run i=
n parallel. Additionally
> its better to submit such a patch to recipe proper ( meta-oe in this case=
 )
> instead of a bbappend in different layers
It has failed during compilation, and hence disabled parallel build.
The issue was not consistently reproducible and tested only on meta-cgl=20
and hence provided
the patch on meta-cgl. Best way is to get it fixed on package itself, I=20
will file a bug on umip package on this.
>
>
>> [LXCR-4977]
>>
>> Signed-off-by: Siva Borra <siva.borra@enea.com>
>> ---
>> meta-cgl-common/recipes-extended/umip/umip%.bbappend | 1 +
>> 1 file changed, 1 insertion(+)
>> create mode 100644 meta-cgl-common/recipes-extended/umip/umip%.bbappend
>>
>> diff --git a/meta-cgl-common/recipes-extended/umip/umip%.bbappend b/meta=
-cgl-common/recipes-extended/umip/umip%.bbappend
>> new file mode 100644
>> index 0000000..2858472
>> --- /dev/null
>> +++ b/meta-cgl-common/recipes-extended/umip/umip%.bbappend
>> @@ -0,0 +1 @@
>> +PARALLEL_MAKE =3D ""
>> --
>> 1.9.1
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


