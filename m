Return-Path: <mkelly@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A36D7E00B01; Tue, 25 Apr 2017 13:18:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.50 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0050.outbound.protection.outlook.com [104.47.41.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42837E00AE4
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 13:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=J8ElFprec1PsZQowANBaH6zbXIxg3wUyi4wywPGMEmo=;
	b=d0+rAOfM5huuWLCIqu24nZ1TdTS0OYOKiajcJ6aCU3uCoHl61vaB4KfFN1r8bii8g0Jc12KIAK6/2PSuPTSU2dNN6rmwEf1rckVLh+qj6lcnZzhB+UwmloN5OFmxZz6Q1WIJgAeyErC/LsWQIvhD944o4OvSB32FfpxV6rBP8I8=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=xevo.com; 
Received: from [10.0.1.79] (65.122.179.226) by
	CY4PR01MB2680.prod.exchangelabs.com (10.172.135.14) with Microsoft SMTP
	Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1047.13; Tue, 25 Apr 2017 19:46:10 +0000
To: Malte Thiel <thieldev@gmail.com>, <yocto@yoctoproject.org>
References: <CAJ5fcV3r3TrPsGsjYN0RpR8VJ6FnpRMFZ+hptzU8Ua1Aae3NkQ@mail.gmail.com>
From: Martin Kelly <mkelly@xevo.com>
Message-ID: <f67e44c8-51ab-5812-c924-5e431085f09e@xevo.com>
Date: Tue, 25 Apr 2017 12:51:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAJ5fcV3r3TrPsGsjYN0RpR8VJ6FnpRMFZ+hptzU8Ua1Aae3NkQ@mail.gmail.com>
X-Originating-IP: [65.122.179.226]
X-ClientProxiedBy: CY1PR0801CA0077.namprd08.prod.outlook.com (10.166.203.45)
	To CY4PR01MB2680.prod.exchangelabs.com (10.172.135.14)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2acb7ecd-2068-4ddf-a712-08d48c13b971
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201703131423075)(201703031133081);
	SRVR:CY4PR01MB2680; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2680;
	3:wd5mKoaIE3fAFkUkDyV5GaVeGFK8Kiv2Z9rDsmggVmzB0uzbBFcJDm22x//J/HcGVNj0K7tzPCAcH6Eg+pyYpGo6smQ9qz/EClO/op9oqgwGZrE+jFHFps116Iag3AShVuI1Yc0xxqW635gAFm73RDD+s0LGUPGuwYiBeJm3q5/G/UE+y+SepfBFMwj+FXjBfpXnaO949KTYdfZ2iC7neEW+ux/M4yeW8Mr3TL0TfW9Uxm0X/3R5+QQWfBsfWIbABC6dXWgmpRW33cnmUWo2D6b0w30ff7Qrx2PrKuCDykaYFmyWVAhbuf5dJ66VpeTWTJIvIMDMAjip/s7Uvyny3A==;
	25:kBECRTSlHGmWzmjeU4ImEpDa15xTxHGdWqODbDlCejqxONBNKk7CtA7i1uIibOzpd9XAU0s/n8+FRn/p/kpHDUjdtupJWv+H2/DuHLJ5yiWLJB+WLwIB1rWBXPGM8XB6/kc6Lcg2VWyje6/j+SHANM8nvkirBE1ZiKOdqYzgq9EDqLTa/+WTqx+gFvIYObuxOYocaTOzNKkol+sJKYI/vYa13q+1zr2k6NukY2NgPGWOsoGZRBpEECvIyQSh6rTmK83CedeYO0vG4SMRhzL5U5/IUtMks1s/CombzJftHD89pjtRbsoqh8sdy4/l+smeMEYsAq42BARbwFd/e5Msp313S1V0a703PR3t3NXotmXD06eT/W4+LGbeEm86qXha5uWs9T2GswZBCB+oRTW7QEkyTlA5MRomipfs6LIbGCHUTupc0PBF1Z+2iHpI9//u0NdF17HqHk3h7x7xoAGUWQ==
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2680;
	31:L+5X75yVPqKUTotApg+15wv6w0lSzL0gftBKGf5/towz1IAxPqfGon55JWTWEvT0XyhxEgHwdx1pzExHPWrUls/Jnv1F2aZwm3FilwcduM8h/k3OEferfJgxoRIhmkptmmU4URZf5hc9nEbYbNQoqfXlB9P9MAczvdXRLfI5lqGcKUUZiBrv2VwuOyqNtHkuebuD3Nq2SngVzCsZ6AuMGTpGzFTfRGfmmZrdIRnjaMQS3ldqr3EAmW8+ERnOtlpsNZs8s2j3R4ge4uPnkYWtqg==;
	20:dKyTvWHTCMmKqCZ+5cuWENclf+NyuByhaGL3FEWCq0yr1S41CARgJVB+Y0WC5HP12qy+K5ZkkrW4Dj2Rzi8unxCfPHsxKR2PNywHVjWi4qNG0/bCuJxK+828eCYeeF2MUQ8++oYmSJtEv9x2MfB9JdHJvez9GTICwjtAxLyaCqby4aIbCesYRVfCQIIaTfMYJolOFUwwFv1e+4kq/TxOf6Q1eiDIkhC/QpkTyVqjhrNfzTgoTfi9UIDxda4MVt89tMjJA5IFv+MNNPwzA/edTIuxsdsR6jJ0dZtix/u0F2+WQWzoJsfIo7ZrpTso+A/tE+8WKFOfggUq0WJ8oGiF7w==
X-Microsoft-Antispam-PRVS: <CY4PR01MB2680DABAA2947775D5C5E2C4AB1E0@CY4PR01MB2680.prod.exchangelabs.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(8121501046)(5005006)(3002001)(93006095)(93001095)(10201501046)(6041248)(20161123562025)(20161123555025)(201703131423075)(201702281528075)(201703061421075)(20161123564025)(20161123560025)(6072148);
	SRVR:CY4PR01MB2680; BCL:0; PCL:0; RULEID:; SRVR:CY4PR01MB2680; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2680;
	4:Vypg+qR+jR+q1pgvkFpLREhlFRlBhYslAg+AXjS/F1Cwo5l4ADZOpPAZRjvjq3utYOroTcilJd+SHS2qUs0QpLdr2AVH+H0RnFV2JbMj8JLbuNgVnmX3a1eJqu4h1W8fuBuSP8qro9SAyKdwFJ+VjX8M7hhP0AmPca+aF3jJz+mx5DiUfKD8xUX4jPv2YhvbNZGu97VlrstWCh8GJ5t2wThxu+jbFDppgiTNr7OdophO8qeVfOVEZKfykWnNgw7cPwAa5NjkOaQYMwuUiguBLzjqQcKny+OepocMtsxD4g3orsblKG9pLDTW6en9JPYmGr3yqu69+d/WViaL2K4g43tjN502wiF9zropMj9j3vdoHjY2zDfZLHJ+9xdUwqDxdBNTJL10ORbskczRLInPJhwY/aG5ZAvmUguvZQsnYkAoG9ewdIuRiMUt8IfT3Rt2DjKJfHImd7MhMeHY1TKNDGJOJ6pmbE1rnPPeXKj6L3HX9ev/AmylTTRRrL87DCe0EjdAtUXFu8znK5hwiFuaA0DoEdbX/5xuLMT/BFR3k1fNM24ctuNFw2BfYjtpvmQb6occI97ESZOMwLAUV75u7RrHx8ExrtFb52XRCoCHfToaj4RJBSDcimLDcKwdu9SweiJecFCpEgdgfnoENKSnnwj3pXOEwMSx5leUIMF7qeXLLNBswjqPUD+w/nmk+sAZ+rG1E4Kzu992JAWv/BfUHw==
X-Forefront-PRVS: 0288CD37D9
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(4630300001)(6049001)(6009001)(39830400002)(39400400002)(39450400003)(39410400002)(24454002)(377454003)(6116002)(3846002)(229853002)(65956001)(47776003)(31686004)(42186005)(36756003)(189998001)(33646002)(64126003)(6246003)(5660300001)(83506001)(25786009)(6666003)(53936002)(53546009)(2950100002)(65826007)(66066001)(4001350100001)(7736002)(54356999)(76176999)(50986999)(86362001)(305945005)(6486002)(38730400002)(2906002)(31696002)(90366009)(77096006)(8676002)(81166006)(23746002)(230700001)(50466002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR01MB2680; H:[10.0.1.79];
	FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; CY4PR01MB2680;
	23:CIhycJAoaHc0CDBynkt3va8Dp/lnPesu8gqAA?=
	=?Windows-1252?Q?kyq+ZbgHchWRvsBVaiaU6sZOjVRMBV9Gg/noQVZS7lXvOUh2FTjxOXlU?=
	=?Windows-1252?Q?vWRzsOyeVTYFnhxQdr8SlpPjwRJD9IZbPMWSXxDXya65kiSBYNnoUwWV?=
	=?Windows-1252?Q?oksGA/UQ9e3o/axjgOEMpqpywvd8C1Bc77zDNXHWgTy62kerqOkqS5aq?=
	=?Windows-1252?Q?u5WUVlUbIfwV/ni8DZc6vmyxo0MaTllICVPcAdQjt0nZqgO1/R2cWMf6?=
	=?Windows-1252?Q?wQi/6QW1X1Q7tdO2f/XAf/s/QAf3E/SwFnpw0/m4HqJC5FMRZh2cxX1J?=
	=?Windows-1252?Q?cGc6GeC5Dtm2k0vZXt9A9deUYU1GODTGP6xe/bhHL0uHdSZ5FbAXUk+x?=
	=?Windows-1252?Q?pKB7Z9UwkQeTRLYC6VWc6RRCrPuuG1Twg+YJ5cc7MilDkVY74GpfPlHz?=
	=?Windows-1252?Q?qT8BMik2ZYMefTStbFVUfdouTwsgcJA7ILpKGO+7c6c3lqG7L6WuSwUZ?=
	=?Windows-1252?Q?dUmhpeJ5MCq1Y486TiLyd8DfTJ2CAfJQmBcC0V7nk0VtLOw2eW74usvq?=
	=?Windows-1252?Q?hdmApUp0jSmqGaRTBcv0CymyOG6nQHVPucShb3VcH7+0Tq6fPrIJliZq?=
	=?Windows-1252?Q?AKIBC4PE2HZ2FVB5BltNoXuJpobVtC9EMg9gB4Uw4OlZwzPoLib0pgdv?=
	=?Windows-1252?Q?nP1m1KoiSjHHnmJFLbY6/YXHcoMo19RvMDUNokwezO9t/5BtnYW6IjFG?=
	=?Windows-1252?Q?tTJDTeoifP4ilQlCZdiKVJN3oSPtuoiey7EKaHt2//U9Yu6IOdEs/qcV?=
	=?Windows-1252?Q?gzUilTxggvMBlRIjboNn+NakUEiZ0/iGF/rDiUZIcFdQBZBq9ttWGAFe?=
	=?Windows-1252?Q?H+73gVctZg5zwQGicxQXbVQvCkFwZ7guSU/Opp4YX91n7tDxxNF9GIeP?=
	=?Windows-1252?Q?MTWPH2YpBbMIo+G8lWKvAYI34/Qv73lj3w9UxtSZaeUqWvbJnd0mQkDM?=
	=?Windows-1252?Q?37lpTQ0F1MsZUqlwLdnrHCP4aLofakVM2KMt6SCuhwKiWT0l3UkKkFX2?=
	=?Windows-1252?Q?eQ8LugQPaiy+zO9BgILK2pQxf/+baHVyJrbLbejPfRs23oA6WxldwQYO?=
	=?Windows-1252?Q?BKEuWF7VXa5RhqkQm07LT3zKN+5MoC4Y35oQeMvjkAfXDWnZB+2l0+CV?=
	=?Windows-1252?Q?o73w/NguFykdsYOL8OL1pWKMEMlBvk9x6lRM7HgobB04FDAMEfV6nwBN?=
	=?Windows-1252?Q?aZOdljq9gS4eUg3tafIcDubmLYEEDk3iaziBGdwKMGvuCtUgrZzvHlkT?=
	=?Windows-1252?Q?p7o?=
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2680;
	6:FNmDth6iRinaKoTWp7809CTd564biG7HaWbpc1m+u/5HbeflceoIW8b+tXuCsaMhcZ1fGye1urC7tcBYN4RAxeGjzFc9VbYLhB7YFDFN4jvZ7KMCwKg06BXBx92dUKlmrh/Ohb+Mf8duX79uIt5ha01GEPUaC9d5HCkc/zTe6My2yZtldEblU5UjXE5JBoW4nq3rkcHop/1GL1epWrwqYbkjCjTfncD1mvjJcDwWgcy8o5q4uxY8hnlvo8hdCtMTTj/ykkRLKv0y0Up217ejwKZMEscHQDnA0GNY5H0LR/M4vDjR1pq26TjbKZv0UNgiQMF9cFaFHM6JeSw5rrz3r/0VwRp+kk7s0wo+j80/girLv1aReHSxT2OSoT8sbZ81AeaL92t18zksArOIBNDAUt1USpRc5bGIRIGJKdSKtuQRVTrnEGi7hlFFydVa1Tyvd3Cfx+uyu6gZHM/s3dwWgwbA3NqMZazew1skecI+lwMC3SgiRMhZw0CQov/tZLiJM/aXrKYbukvC7Z/uBOxOgA==;
	5:GwNhCEJq0wIgUw2L9fBbQchCy8N1QtdMYYKRAcFRMqQSunHhy8qFHMIMe8oXNF3Vj3Mpc61X1A3JVf9xY7zJLNcvqNvlVzBcmV6s6T0ZDHdI10ScTdJc7+uN2CR46y45ZD5tud545ESBar7ZD0qHYw==;
	24:bJL28Y5cfmWSW3jIhIX7S3PbLOLv+wVDNPiJTW7efeX7QvqX7A6VPr0EuR0hLhr24qLk/oIyxE6bF5EgiyvpIx3HJVgQDnCZZCB6XsCWilE=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2680;
	7:x0Kbr/xuSRuDpC8q4LLnjf4Tg/uBIzGJmkmZaZ+yXUf19uj2tDg14bWzonq5uqBU6kkC427pPB7V9pbXfJ7dFLwiriE8H1bkA/mY9XJTmm9YnAixfN0HvYDIKikdmqWQDEiiWPj0MeW+kGLooB6h9s7gNWjhsvb+W7PWG0fx6HXWOk/Jpm/UvRaj85B6XHV3HxYPkAP1wtpQ7vcXC4d3OzDF7tUCv8pP6ZdVs75hdXHRkYfetrAXwA8l9mT8hEsFhYgR8WwJEZkdQ0SIUEaKl9X7P6J+ixwENGTBybxsAiC1vWUjnN/+SGqcgE4sLgy0/vzYkOV/08ak4pivy8xxBQ==
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2017 19:46:10.8352 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR01MB2680
Subject: Re: Qt 5.8: do_rootfs: File 'qtdeclarative-plugins' not found
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
X-List-Received-Date: Tue, 25 Apr 2017 20:18:44 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 04/25/2017 07:41 AM, Malte Thiel wrote:
> Hello,
>
> I am trying to compile a Qt 5.8 application using the master branch
> of meta-qt5/recipes-qt/qt5/ (For 5.8 support).
>
> Within my recipe I have:
>
> RDEPENDS_${PN} = "libgcc glibc qtbase [...] qtdeclarative"
>
> My recipe (and therefore the application) compiles fine. However, in
> do_rootfs I get the following error:
>
> ------------------------------------------------------------
> ERROR: my-image-1.0-r0 do_rootfs: Error executing a python function in
> exec_python_func() autogenerated:
>
> [...]
>
> Exception: FileNotFoundError: [Errno 2] No such file or directory:
> '/home/sec/sdk/build/0101301/tmp/sysroots/sm2-imx6/pkgdata/runtime-reverse/qtdeclarative-plugins'
>
> ERROR: my-image-1.0-r0 do_rootfs: Function failed: license_create_manifest
> ------------------------------------------------------------
>
> It's true, there is no file 'qtdeclarative-plugins'.
> However, qtdeclarative RPROVIDES qtdeclarative-plugins, so I expect that
> this file should be generated somehow?
>
> Any help is appreciated
>
>
>

Hi,

I actually hit this issue as well. I discovered that 
qtdeclarative-plugins wasn't being generated because it was empty, and 
by default, bitbake won't generate an empty package. You can fix it by 
adding:

ALLOW_EMPTY_${PN}-plugins = "1"

to the qtdeclarative_git.bb file. That said, I'm not sure if this is the 
right fix, or if there is some other reason why qtdeclarative-plugins is 
not being generated.

