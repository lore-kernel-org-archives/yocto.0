Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF9E2E007BA; Fri, 30 Dec 2016 10:54:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.101 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3587 seconds by postgrey-1.32 at yocto-www;
	Fri, 30 Dec 2016 10:54:25 PST
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0101.outbound.protection.outlook.com [104.47.38.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A42FE00405
	for <yocto@yoctoproject.org>; Fri, 30 Dec 2016 10:54:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector1-ni-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Z0lbExuxD/ChXUqV+9dbzfVo3C6Hud/TgLKke91Fdyk=;
	b=Ii01DuU+31hHxFTzSPYyw96STGxiu682wOUikkgOy7Uryd8lkvecO+5WNMdWOtuJWldfQww2Ztx0UJ4HwAD/XcLGVMiPLphaLbD7xsFSW+8fVFt0jXkLvASOOY4CxLioqo+AwMPYnKVbY5t5iq7NwO7ZMKCTjRimf7BN0ELKWE0=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=alejandro.delcastillo@ni.com; 
Received: from [10.0.62.53] (130.164.62.126) by
	BLUPR04MB839.namprd04.prod.outlook.com (10.255.188.154) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.803.11; Fri, 30 Dec 2016 17:21:11 +0000
To: opkg-devel@googlegroups.com, yocto@yoctoproject.org,
	desmond.correia@prolucid.ca
References: <CAPNRg157=16-iL42mntUZnFDVTfQss0fXM8fgXddG9x9CBiQyQ@mail.gmail.com>
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
Message-ID: <811a0f1c-2e66-6141-8a3f-184356b9863b@ni.com>
Date: Fri, 30 Dec 2016 11:21:01 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <CAPNRg157=16-iL42mntUZnFDVTfQss0fXM8fgXddG9x9CBiQyQ@mail.gmail.com>
X-Originating-IP: [130.164.62.126]
X-ClientProxiedBy: BN6PR15CA0015.namprd15.prod.outlook.com (10.172.204.153) To
	BLUPR04MB839.namprd04.prod.outlook.com (10.255.188.154)
X-MS-Office365-Filtering-Correlation-Id: 97af8924-99a1-4146-719f-08d430d84063
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:BLUPR04MB839;
X-Microsoft-Exchange-Diagnostics: 1; BLUPR04MB839;
	3:Bng3PVWDXKOzPdAnJDQOkiDVYKlx5hNgIvUU6DgcU10JS09LMXinKEMt33Co/9fvKjbfbjiCFz/zIki/l87CIpIdQLjUKsivH2ZMG1WGyvJWlePKQU3I1s8qa3THaVFHog+gz+kb7rl3URZJaj+oS7RM1mysyePHUoVDfKtdkCjx0+avcUFBJrAIuFGDiGqjaakmFfn5Zvn08527gE5KLNsoLNWnIuDGg1cpcCIoeOgoX4WgsAA3mYMGG+0F34p8D0Vv3V6r18u7mPl+RLbmAQ==
X-Microsoft-Exchange-Diagnostics: 1; BLUPR04MB839;
	25:5Y9yVBzVuJUbVua8rYGu41DU+MAh/MBr3l8J6zQKeFO1H0wrrChGZ9zzAJiAYV7aPCFy/3P/6wN2LUCy/79JyxCiJbAWVZHnv3NJJS7+NK2FCspKV9dkNXch1TQn/H/NfHcdgrNo9+j5WII2bhaTNNWven79DmVhbPK5j0WoXiSIW8rLHexgNT3jekAIfiDXgpvcU4Oo3sruSLixOcl28sStLX5S0AJ4Uozf7/kYir4v6JU5LKTqWUN6s6M5PU3THu8LDRAXTn/7FQh0n/8X74sTB8Lhf/UFqSOtwWhEB0JdeHz+w8kajwNb5Y6N5DxLu4RFYFZhORpoDw+EsGvRLx0hZxH5j35ORNz3ouEBeL2nVNEk+KU11/yC9xeVf6g0KZ0ciCmoAaPregSbBqhg0Q7WwXUFAcF65Fv0SDw9oxVAUcLcN9KLCNfQiD2Ka4JuQI8w98H8LpAlSMGwKpDagS/2inaOj8v6dHDAH63SuaLoreeWYguN1J4znhoXLcK85+fye7T88psidqzktEpj77IEPLgcLh1N/0C4BztS+wJ4dT0KREcBhkYqTV2bQiuPzf7Z7iQGaTRAFO0RvwzXguRY1btW2fHIwF9kR0ETsIHi2LFXLe7vZGYCoJu0g/IIX+3t47gwgLkW7NtAG7k7z6pAcbQ6SYR3uimTqg6Ho9Kvg8fkhmCRwAn3fynMwYEU7lt/iY+x6cCYjsKQ2dFbBJsEmh0NfneYTkt//xH74jngBFxdmNWNxRFvGZ5A1FKUtYL+LnGZjUn3hsnrztHC/8MzXkvwr7yFSp58o7mfDCESiI7uOLCBlOaEz7jp2qF1C+dzG5JjnWrnDubZCJRlyEvaRFdFigJUPDu/2ihuSgh59RuIUVw8hWkOYgH1WXnf9jfGyPXSwJ/Q5Id0MAoVvg==
X-Microsoft-Exchange-Diagnostics: 1; BLUPR04MB839;
	31:Od1lt2xGkFJ0EIqtwK1+2nJB+NcXt4okJ/6qE9ue5ebKMByLMHYJapCiBQYcMOc+NKq2Jc4NCNlDsIuXVn7k37U9hPjT5SRvSzKepwYpEoT3TkGiK3Y5mp+Wg/uzBzEuk7VsTd96fq2hMPpnpUKxIbfCzHywLw39349pUTa3BG7MgtlRS61776ttU6QlGOajHRnuzqnidHfRleTJbtjct2d7HRK25wyijsuM9P1ZPXGTaKmHoV8In0P0Cs/uQv50wDM2bBULp6h9Jx1GHDKP/GAIZ4jHjKG30EHLFFPWcOQ=;
	20:jjCVTZGMYLNhB5uKVmRsU45Q8hPmIdMMM5Vzc9Ds/uofAn+1HQA3yIVmY4bEfqZBD93nhPBkbkvHTtDMfH13zWjsorJNEKZpSJT/QWiQQEX9CMPEx1kKIP8KeBbUA7tTXAt3tA3AcOLslHzq1wnWIQX505WkwkQ9r2sOZnp6SaYBAqWphWzsM51+YCSPNk5tFj9MWauif4U9rGF+6UMro0ovssIFmDa5C9aUTNr0XqZCJsjTsuhXpan/JD1+SIQY0szs89UvX0icoCCA3WlXrgR+gV4euHcZ3cJY3R6JAwC/hLoxESexR9p1EaG5R08gCb8KeC+LmAFTnqiI4FPRR1vJo6MC78ORXPCJvRqWCRDCDGcXhZvnjE5ZedxJ1v61lcm7HiZkpYS6hec701y6e9mwvMGR9H7shxS1uDImgEDv4EGZkI7KavZv1WgA9PCMKUtvlTMGIWE7FHQYhGiF8xnuflaqpsixGEUkEMmfzvakLdt6VgnxkeQH5FxqjYBvjDvaRa6sawzLCsT8mqUx6mR4kHQKVSKJvOMhQdNVTkdlFZjGO4xkWTx/Uuso5LPOmkbReSrm21CEXGat9bdDw2VjXrSIm9MPnhWahtWBMgw=
X-Microsoft-Antispam-PRVS: <BLUPR04MB839A504FCD2B8D33D3A2D81866A0@BLUPR04MB839.namprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(215639381216008)(228788266533470)(211936372134217); 
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041248)(20161123564025)(20161123562025)(20161123555025)(20161123560025)(6072148);
	SRVR:BLUPR04MB839; BCL:0; PCL:0; RULEID:; SRVR:BLUPR04MB839; 
X-Microsoft-Exchange-Diagnostics: 1; BLUPR04MB839;
	4:sLkscbuuctCldTkF+TTdAofJC8hbI6FRnbEHWl7kXrCB833++3RF63ufU4DFOjki6bH/dGSUA+2ZCmM3IIlBJiwySK1jpUfMOrPpeXdXvh23UdxspyLJ44okJTcA+KoadDrkMgOfU8nut5mCbfEEMdpF3cW3Z4v/+DrsNfVxHPihomCPEix5alFEkXXPFvIU5FbO04IRknPD0yJkjQwEYpcT2vN51efcg/xEZaP7kcFfY++CbFB5B6KuOwcF+4R2z9ybnp1/eXP9xA1qZDMhxzkqVUN/KVTL5saYfqq7m+1/ZyDrZUiE7k1ctQpkOcTfc6/p3UF15EsREQ0Rc8QuuCyoEHWDYUp2QtIt15MUvhpUE6S2aU2G4zNoB50DmEZLrcrbTCmdrboO7hz7YSCVp/bEJX99ZXXzPLuihkeYLrusfvZoGQMKhZ+zXTJePbMsuaqsoupzWJZ6sBCZfoaINLEK0IGP2ymKsL/G/FihgyIjKlObZPGuNZY+rUFGStwqlBNEtj1FQs/QA5CRWqcdSUCGlXlrwsAzkbipo5QzLORTsvAh30NUiwwnBzvNtjjsJhH8axW1oTq3efYMQT8a7XDVs48hZwMVPJYkisa9ajXiYnHxl2K5xDN9O3prkB1Hy1cb6ZCCI4nn0tLJ13LLBn0fJ6ef4jYGQKER/8bF1mAjY1Ypi98Yl+dDdVqUcjUh
X-Forefront-PRVS: 0172F0EF77
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(979002)(6049001)(6009001)(7916002)(39450400003)(377454003)(199003)(24454002)(189002)(107886002)(106356001)(90366009)(2906002)(64126003)(101416001)(305945005)(92566002)(230700001)(65806001)(38730400001)(77096006)(25786008)(83506001)(229853002)(6116002)(3846002)(575784001)(33646002)(66066001)(47776003)(31696002)(81166006)(6666003)(23746002)(65826007)(110136003)(2950100002)(8676002)(6486002)(81156014)(68736007)(7736002)(54356999)(76176999)(65956001)(36756003)(4001350100001)(5660300001)(31686004)(50986999)(105586002)(50466002)(97736004)(189998001)(86362001)(42186005)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR04MB839; H:[10.0.62.53];
	FPR:; SPF:None; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
Received-SPF: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; BLUPR04MB839;
	23:IIlFao53aRg/IJfsLZcv0YkIf7TdmOiiHiwfYx?=
	=?Windows-1252?Q?+ZBaIm04agFOGYgJMj88KBCD7lk6UfuaI9jrbODQL+YLA2VeSpxY7BXG?=
	=?Windows-1252?Q?gM6j/hDWL6DKtga/WJGs8wLf/Pf8QCE60KlbusXpvonM7jcvQvBjmHU7?=
	=?Windows-1252?Q?dLaSJVAwILn5q2Bt6HoVAuCa/ZgpA8JIgYUkj7NEfN4stc0vt7inN2NZ?=
	=?Windows-1252?Q?mbCJ9NN0dhAyUvrRo4pKr+iw7RQwOxLvH0ORea8RhAtuZmmbxgcTso33?=
	=?Windows-1252?Q?jFL1ioAhqK/tg4ev26tbtrTHUhKDdqIZ0t1aKKufxCWwpP2a1hF1Fl4/?=
	=?Windows-1252?Q?Jthgpc1TbfeAYjQ+aKXrgLSORh994iJ6ssaTSejtRFnDgCwKdOaTyvDO?=
	=?Windows-1252?Q?8gsRlkoojXWLezMxxvzP5N2yGkyIkxi/vj8gSGTqUJDP3egEtyVFj+VH?=
	=?Windows-1252?Q?gZwy3H2Q36j+lw+ZQKHUCSOoRl2lUbTHC+FJ8Dj/lFCVOzv7N2OMozu8?=
	=?Windows-1252?Q?1QHHSFgOvt0oflFFZFUnVb1hgtFrLbtYdG3ek3/A8TCwJDatuJnCQSPv?=
	=?Windows-1252?Q?ExDOBHZDa/rX3yThpMkllgDT4xwYM94Zx6F3nJEowhC9s2tj99Tm+KWq?=
	=?Windows-1252?Q?lgafP8pkBE2uyd8ZnloebGcvgaJ7mCMVl8jhccl/ku0AtBCHrkP4o3wt?=
	=?Windows-1252?Q?1iVhjqKlC7EaJhps4pZ5+cCzKScGOFqOA+m6fwpUuwYnsmMtUZZg54xM?=
	=?Windows-1252?Q?NIdDCJ5quc1aLHCLbEIBiZ+Nk51sq1yezcNRpnwj7cmwubdKAA/WcxTz?=
	=?Windows-1252?Q?AGY1SWPyY1Ohf4uJQcCIZoO1Hc1orjvkLXucJ36GvEEc3rxudkLmMkqq?=
	=?Windows-1252?Q?FysGZsvP7bPI5z6QXPiuuQJXrLt9znLom7QE1q7aq08/kCkgL9vRyqQd?=
	=?Windows-1252?Q?WV3RxvsjWpUqz0uNQRfNaBB7kwFo9Zea+h1zCUk16p729VjeRGvd95FW?=
	=?Windows-1252?Q?faum78uupsrNZZijNbDE7Q5RyDm4XUI0Y7b5X11kWlim8Ylt1ulbnCZW?=
	=?Windows-1252?Q?eWc7gWLvTnvqNgZrc/BfP/lr/07SRNey0yssdVPMyllQ0Mjys49JQIVn?=
	=?Windows-1252?Q?Fwjt0eSLoO9U/oV0QmT2E67ukEKTHolJ9JjzptPL3g2VnjOgq2O3RR8Y?=
	=?Windows-1252?Q?oB58Z2hYcrOU1/f4g9eL3nbl8MnrI4UfUGxEnmUlIo3iRCAAPvy68NeX?=
	=?Windows-1252?Q?JAgbahUxM2JVVfqOMihLxBZE0YUHEaZa9/Vx/hCxP7eh1+zaQXhXoXr0?=
	=?Windows-1252?Q?ie4pWQGMTExM2kZ5Tbfm/6deSqh4pxAQiL3+21G1wa3pLhCYV+I0M8PS?=
	=?Windows-1252?Q?+xWVBASH5/Kf4bWDMQJ2Or/7nKanwXvVkaQd6I0+sfmp5ur/4B5LG9tZ?=
	=?Windows-1252?Q?awGq5nkPwII3KQ3rwrdPYCrHrwS1RwdBT8JKWXU9Umh97IXaE5uwx9y1?=
	=?Windows-1252?Q?h9uz/Ly2aoFA32S86vzfJml3z5x0LZNhF6ecwN/U0ckbZ+hBmXQ5scFC?=
	=?Windows-1252?Q?Sg0YdA6hJ+bsE=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BLUPR04MB839;
	6:KDks8sfShefqxkYzwt0s+L5UwGvTgNCYSlB/Jn34hCSFFe/JVLzWqWIhkDxsuc0BMbXjK5as2GNvM1tkUA4cu8Bg5KVnnfUajnsMzz1aCpNHQ3QYLEwhz2hOW0cwG5dGUA254bTNSmXDDJAt9lcFJj1osMPQ/GSyI6FVFzjkEBO254nU/4mD2KT+KHnHO/K29uyWHHeFYUfeLQCmL3aonS2ll8MtoeMBAOmWbfGnlOH0zicaAF9SgfGqu8sVyQFARPI/nLOZ9wRODCUR2gTeVoUwFYvBj4AojScAYttf4v4kCB/mMOpSC110DGrlyLeATPvgGW6fDN1TS4aVAn0Ebk0C+E2OMHbDBTS7UDyKV1GSTwgii9yNOw2vIm7vv+Im625em/5wEMEHTCpkMrmcbbL7GGiySdsZxHErNEQ/Fxc=;
	5:LJqDdAZlQPpVU9E54Q1Bfkivz0v5r/owT/Pr4nIA2jxhpRXI8c9CEp5NUpErq7t1p36Q7qs5v3xPEalGulmULiYaEWeXj5fPxQX4K16DKuDj5mYEx5Cs7twVdB5n47KqRBHT27QQ+KumeZASw8Sf12k51IgsXxukQnyqxOhfOMs=;
	24:Pp8ZBeQFkA08i40UMmCapxYqRBkDq0hmiaofVppcQ2IBdwfdJ4qcTRcZuQrrj1lsu0xFNYz340Wc73AMlKwFEP7ifGPiBp28gvysAbCjRs4=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; BLUPR04MB839;
	7:/4KiGwrPhERNYDEW5j7Xzp4vGZQ/t0Eohv0qycX242Zn4eLo84wrQU36sua0JeM+Vo5SKoDrovOnD/Prlll0dRYcAKzBJCf6Ir4Llc9ibnQ4/8CwUJNMsK5pRu+SPSE5KYWTKpVO5vfr7EBAhVwC4ZiFv99EXj6HGwXeohVV0PGX+FXGgUyl4EdErIzBPYyt8jjCTAawpYTNMyfmH27eT6VGUmJ1e+qQ4kPCF/zRbIOdA3y/ozI1Q5E5IMiIlJ5PIevnwpZgHLJ4Wrafg4AGZ5q5GJlpkwLRM05hlM9TfaOKtu+0HwpbeJbD7yztzX8VnyOYD7TBNjdgfGnWmx67mgyB8sESaXjh/8Js+sysOyaGsbmuwU6EGTZr5NGsipbzzZJLH+7TQwHBxL0VAjc3hyUCZf0DBBRhjiuyOefuS8vk1+nswgJcV92kNOf4AkOfEae6ay5AsYwZL34TouVpBw==
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2016 17:21:11.5048 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR04MB839
Subject: Re: [opkg-devel] [opkg-utils PATCH] Added support to generate index file with multiple version per package
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
X-List-Received-Date: Fri, 30 Dec 2016 18:54:30 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi Desmond, thanks for sending the patch, works as expected.

The only thing missing is your Signed-off-by line, do you mind resending
with it?

I also have a very minor comment below

On 12/28/2016 01:15 PM, Desmond Correia wrote:
> From aefa378d6a167124bdfb0b8d6c92aadb4c36fa46 Mon Sep 17 00:00:00 2001
> From: Desmond <desmond.correia@prolucid.ca
> <mailto:desmond.correia@prolucid.ca>>
> Date: Wed, 28 Dec 2016 13:16:48 -0500
> Subject: [opkg-utils PATCH] Added support to generate index file with
> multiple
>  version per package
> To: opkg-devel@googlegroups.com <mailto:opkg-devel@googlegroups.com>,
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> 
> Using the -a option with opkg-make-index, you can now generate an index
> file which will list multiple version of the same package. Added since
> opkg now supports specifying version of package.
> ---
>  opkg-make-index | 16 ++++++++++++----
>  opkg.py         |  8 +++++++-
>  2 files changed, 19 insertions(+), 5 deletions(-)
> 
> diff --git a/opkg-make-index b/opkg-make-index
> index 7897918..3f757f6 100755
> --- a/opkg-make-index
> +++ b/opkg-make-index
> @@ -11,7 +11,7 @@ import re
>  verbose = 0
>  
>  def usage():
> -     sys.stderr.write("%s [-h] [-s] [-m] [-l Packages.filelist] [-p
> Packages] [-r Packages.old] [-L localesdir] [-v] packagesdir\n" %
> (sys.argv[0],))
> +     sys.stderr.write("%s [-h] [-s] [-m] [-a] [-l Packages.filelist]
> [-p Packages] [-r Packages.old] [-L localesdir] [-v] packagesdir\n" %
> (sys.argv[0],))
>       sys.exit(-1)
>  
>  def to_morgue(filename):
> @@ -42,7 +42,8 @@ filelist_filename = None
>  stamplist_filename = "Packages.stamps"
>  opt_s = 0
>  opt_m = 0
> -(opts, remaining_args) = getopt.getopt(sys.argv[1:], "hl:p:vsmr:L:")
> +opt_a = 0
> +(opts, remaining_args) = getopt.getopt(sys.argv[1:], "hl:p:vsmr:L:a")
>  for (optkey, optval) in opts:
>       if optkey == '-h': 
>            usage()
> @@ -61,6 +62,8 @@ for (optkey, optval) in opts:
>            old_filename = optval
>       if optkey == '-L':
>            locales_dir = optval
> +     if optkey == '-a':
> +          opt_a = 1
>  
>  if ( not remaining_args ):
>       usage()
> @@ -120,12 +123,17 @@ for abspath in files:
>            if (verbose):
>                 sys.stderr.write("Reading info for package %s\n" %
> (filename,))
>            pkg = opkg.Package(abspath, relpath=pkg_dir)
> -     pkg_key = ("%s:%s" % (pkg.package, pkg.architecture))
> +
> +     if opt_a:
> +          pkg_key = ("%s:%s:%s" % (pkg.package, pkg.architecture,
> pkg.version))
> +     else:
> +         pkg_key = ("%s:%s" % (pkg.package, pkg.architecture))
> +
>       if (pkg_key in packages.packages):
>            old_filename = packages.packages[pkg_key].filename
>       else:
>            old_filename = ""
> -     s = packages.add_package(pkg)
> +     s = packages.add_package(pkg, opt_a)
>       pkgsStamps[filename] = fnameStat.st_mtime
>       if s == 0:
>            if old_filename:
> diff --git a/opkg.py b/opkg.py
> index b0d79a6..47473da 100644
> --- a/opkg.py
> +++ b/opkg.py
> @@ -501,10 +501,16 @@ class Packages(object):
>          self.packages = {}
>          return
>  
> -    def add_package(self, pkg):
> +    def add_package(self, pkg, opt_a=0):
>          package = pkg.package
>          arch = pkg.architecture
>          name = ("%s:%s" % (package, arch))

since you are defining name on the else case, you can delete the line above

> +        ver = pkg.version
> +        if opt_a:
> +            name = ("%s:%s:%s" % (package, arch, ver))
> +        else:
> +            name = ("%s:%s" % (package, arch))
> +
>          if (name not in self.packages):
>              self.packages[name] = pkg
>          
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google
> Groups "opkg-devel" group.
> To unsubscribe from this group and stop receiving emails from it, send
> an email to opkg-devel+unsubscribe@googlegroups.com
> <mailto:opkg-devel+unsubscribe@googlegroups.com>.
> For more options, visit https://groups.google.com/d/optout.

-- 
Cheers,

Alejandro

