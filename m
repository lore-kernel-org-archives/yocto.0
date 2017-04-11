Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CC0CE00AD5; Tue, 11 Apr 2017 11:57:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 843 seconds by postgrey-1.32 at yocto-www;
	Tue, 11 Apr 2017 11:56:59 PDT
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com
	[148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D9A7E009C2
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 11:56:59 -0700 (PDT)
Received: from pps.filterd (m0098780.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.20/8.16.0.20) with SMTP id
	v3BIfDCD003628; Tue, 11 Apr 2017 13:42:44 -0500
Received: from nam03-by2-obe.outbound.protection.outlook.com
	(mail-by2nam03lp0051.outbound.protection.outlook.com [216.32.180.51])
	by mx0a-00010702.pphosted.com with ESMTP id 29qr17amf1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Tue, 11 Apr 2017 13:42:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector1-ni-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=987GJwWTvOmTxBHypc7MSGLXnXHqRqCa6q0MwnrmZC4=;
	b=WoZIrqe7cKsFa3oGf+L5+7aIzVCW6zwuhymecbvfn9gJnPyv/6/XV8t1GfI/hjKrEEWA6Vx7R916Ojm8aYfyuIUx7NUci0Ox6t54sWSVa38E2Bc0VrxPHiRuw9+lWEKJYU9AMjNEBCPaGGwS2AlHrpVG6bY3L1+c9RS+6ebfiCA=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=ni.com; 
Received: from [10.0.62.53] (130.164.62.126) by
	BN3PR0401MB1313.namprd04.prod.outlook.com (10.161.208.11) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1019.17; Tue, 11 Apr 2017 18:42:42 +0000
To: Gary Thomas <gary@mlbassoc.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <3ecd28da-465c-37e4-d40e-2cebb5587295@mlbassoc.com>
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
Message-ID: <3575a160-ff6c-0c04-6f5b-a72051a50278@ni.com>
Date: Tue, 11 Apr 2017 13:42:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <3ecd28da-465c-37e4-d40e-2cebb5587295@mlbassoc.com>
X-Originating-IP: [130.164.62.126]
X-ClientProxiedBy: SN1PR19CA0003.namprd19.prod.outlook.com (10.163.220.13) To
	BN3PR0401MB1313.namprd04.prod.outlook.com (10.161.208.11)
X-MS-Office365-Filtering-Correlation-Id: 28d898f4-6fd4-4cf4-5f13-08d4810a89f0
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201703131423075)(201703031133081);
	SRVR:BN3PR0401MB1313; 
X-Microsoft-Exchange-Diagnostics: 1; BN3PR0401MB1313;
	3:JCCcXI44PQDqeFi5Ef7U2CbAa5mnO1ZGiWEFIZmO/HEfhnhZeAbOw8crWOPnrMNWiy2eilV5vJensb2JM2jOYdNgVsb4jYgEvoC4Y19NvvrHZdZjQYeQhS549YKp1nUejGhggKdqg/SsHbZd9BatFSeOBYH/ggC4jMGp70N8qtGN4sNrP4BhOAguEjs1tLOSPHWERo8jjOaJXbCDY2k5nLhpnGp1CjaWvLEXQtGIQs1MHg6r6IqUqxxWMLJB5Hxn8prfSuRsLqRoVJSziG7qP0Kadi/4QC6DzgkFhlLOe2G5ImqeMWumzoFCHbrVhIMnC/LNqylGOw16WzyU3m/xqw==;
	25:/z/t5uF1yPk5NeV8g+gq+mMg0EqxUx9DslinnJLDYCoPX+g/20/2W66TDGRqBPTCD4p5x+5dvh1lWBDh4fHV98VDTz0yZpZLRnwScy5rdFosZAxVKb2G5BeprwmNVl01YtKleSBtRLUyvQ16Ndb6OD3esSRm3W8a824e2IwQhbkL1BMz+mYDBZ1sRV+vXzoUzXV2iHzxZtCsiBkwaBNLddYTEYm4baNcNEs3re1fC0RhTJ07aKwKBhd9gaGjtRuAy3TzFCuj3EiK3Uf42ZGvVun5iIESP6noPm8faGs7yJ5CMoFZfrRdoHz9wL3nrUJxNq/uPuw5VYJhcdQfgJXTkpX+Sy9oPkFTXoGAVbsAuMjf7lgNmuQQzKazrN3dcjK+5/0MUk6mC8WWUswFrX6GfiQTckq2eGIra6YnrPWLlizc3XAOM9/2aNeGCUnHQD5Ly75BGLMQRLsRZDFEEacVIg==
X-Microsoft-Exchange-Diagnostics: 1; BN3PR0401MB1313;
	31:RVowJhusUnxYU9bVr/vzpPk3PuV9ErWJOsg+jEuizNjaMR+094O32/3yXU25RoDfKJyhOrJIq3tc79TD+bygMEifmnR03VyHytHlQT+a55Ap32Mk+lPRcBTppOb7JfnnJzrmax8uPzuTvQYvtKougYZp1m+KzL4nhQdkrtmghRHco6bRGc43U4qXRtpNCgbPCK5dGD6t0Xk3FUWevnxy2HD6sSbq1Pn15ihSfa2a3pEdYB/sS/KFfDSgIUoLHnU22XtYS++2rLFjF8UMUFJZAlbYkLif/r/N23DxzPCilPI=;
	20:qM+rPrb5Yqykv2npY/wUTk0AgjoxzCpYax0I56y+Ga/KOKnKut74OItW32L/qBZuod802cSFB1/+4F2B/yfaW+DGHc5/KBPApt4MK0MXtaPjr3kN/31i0205roBc5fFHN6WrvCUA0uff+oAWxBcktmihlRNt75linhqUkLJl0BH7ar7aGkj927IqGqt3Ob33D5+i6Ub9PGOf/CGgEX5EhnlznH4MJOfkrBj464hKm5d8d6xo9z0/t/r55Q7Hxw6KxsLTJyzpZ/kZvzQAX4CXLiSKKMmyzZhgKFuO6OUVSp0Jn6hgPirj20qApgtncQ7orV1x/ycjxFsWPhbi1aMiVETVRqA6C42hVKuy8WypxOsoja+AUvmTO3t96EDNmlI8YcpLZmqcSrFWrxjsdnRhfRHFitPpDbk1z4u/Yg1wnAxDjsQ20pbSV6WZKAMmtltqyALSzGiULruEG7XjwjU9tM0OdLybSSRtwRyeASKoijSbu8ePHi+updSy6HWyxLRq0eCR3OSRcFEIy0swL07FMwLx6UWhcH+HlABg5zcGokSvLtikv4yd99YjfLHi+a5f//40NOoEuiRaVk3QXGV/ePhkxxGbiVfJKBlAoHReDMk=
X-Microsoft-Antispam-PRVS: <BN3PR0401MB13130253251F06E5D656AC7186000@BN3PR0401MB1313.namprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(158342451672863);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040450)(601004)(2401047)(5005006)(8121501046)(93006095)(93001095)(10201501046)(3002001)(6041248)(20161123562025)(20161123564025)(20161123555025)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(6072148);
	SRVR:BN3PR0401MB1313; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR0401MB1313; 
X-Microsoft-Exchange-Diagnostics: 1; BN3PR0401MB1313;
	4:6AEllB2TkKxnta4+D4RDtXUAERSeqtqfTl0VBRXFbBor5fVwxswtROr3Pswp6xf0qYU1qigWa44W5P49U19Znmh5neyplC6mS82sXxEV7kfM6Jg4/p+SWaEnyIl/X4TD6X02Li2S1Fg6Axr74ipEVZy+KfzZr9qfvSyUV8v1CAmbAnygMymPAeGrwt4qRhJ7rdG0W49gxvFbmaW7GmAnQx4tmVxB+qxz+ECQyG8nDlwsuLLUMaEFs4H1RVu+CJ6cqjW6p4zbnhPul0oHqT9exUfOv49jrORoxaq6C3YkHkr+SryPvaEOXvei8x+mihu1zmd/sOev0ElKzsE72nTJT9c91j5NJ3h+984S/v7cfubhHq7MWbtiz799dBROyXDofFsCC66u7J85Zg7gaATGgstvJmpj9OUNdMmsoK0jaJd5kgE0FldKPp3tTHwF7NgqNDQGF368wAnP+5iQTX5r5n8guAcjquJDUPWJdt+Z8l8oQifklbmQNub+Qayxhr2xyip+T/k66KQ0M9yVr/3SSUdkpJcoagn8rFOOa2rpVzZ2SZPJj0K2+KWQwxen5IZKupqJOgVh2OmYotu3WHPoWHJfKoTgQkaxIj/tmaTmlUjpgLpJEGAcI6NrUqSre67HGt+zOP2AyRj+GFgWeHtW9PpLE4+9/04h1d6J3cQKYQciT9YYkC9AXyvniRR71nF9oubTCU0DfX8qYXzZHbxkS9qzPskZQddTymNJ+nL7LeHgVarDzc8bEGxXr8m1jI9MAlgvpBFhIZIpCcJJrA3F2g==
X-Forefront-PRVS: 0274272F87
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6009001)(6019001)(6049001)(39840400002)(39450400003)(39400400002)(39850400002)(39410400002)(39860400002)(269900001)(24454002)(377454003)(77096006)(86362001)(36756003)(2950100002)(6666003)(76176999)(6246003)(54356999)(65826007)(5660300001)(6306002)(6486002)(33646002)(47776003)(53936002)(90366009)(53546009)(50986999)(65956001)(83506001)(66066001)(305945005)(7736002)(2906002)(4001350100001)(2501003)(8676002)(25786009)(81166006)(31696002)(966004)(50466002)(23746002)(31686004)(229853002)(189998001)(42186005)(6116002)(230700001)(38730400002)(3846002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0401MB1313; H:[10.0.62.53];
	FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; BN3PR0401MB1313;
	23:irpdjUGAxqLIBovxBlJuR9iztrjcaVXelRT?=
	=?Windows-1252?Q?pz1mtNcu8UKt4W2Cl7GU+IGul1A4WIL/DvyTnIcLBoQjGZwNQUTwU2jB?=
	=?Windows-1252?Q?t8+RKiVtxa0daJUwv4TaeUpbWTbINNflFMagKZ9GUR8wegzizYV8DpCZ?=
	=?Windows-1252?Q?yojBBvlhWtcJeJaDwpKS5p90mfa3pyfJwjMC4at4mOdWTiCUuOasryNn?=
	=?Windows-1252?Q?rpFbG8L0eeUqR1LSoAOJduCU8g+dzQmPLY/1GPZw8sKbjhq9VAHyiFyW?=
	=?Windows-1252?Q?2VbMEWdmpa8eQ7KATEQ7Mi6zxtnyqTwKcgIZvs3TYkMRkJmSGpYNZ9yM?=
	=?Windows-1252?Q?RqRMDXvOtMtcQe9sXMz9OoxSobCJ6Ixb9v54cN5WtCJICd2x53uexoKL?=
	=?Windows-1252?Q?vo6RmJAmv0zEQciiLHAMB5tunKoK0CVAVRFDgS6J2y4fAGvNzfkHnys9?=
	=?Windows-1252?Q?+48Mo7Z0mm5mIGKtiSNQybzJVmBEwB58YoubhViAGwURB4UGGP3VtWOp?=
	=?Windows-1252?Q?YyRz5En2AadrUm5UZN2O4aINvqq+o5libpX4Tlsfq6KuvlUAroab7IBA?=
	=?Windows-1252?Q?c6SQJMqvoqNnVCw+o2SW2066J68ZybiNmdQSmcjgSe+M44Zi+YOP7+3y?=
	=?Windows-1252?Q?u74au8vRqv1tKROYx4qfojJbbs5AaVLkvP3ItH/Sq0qUCqc2Kyf4sdeM?=
	=?Windows-1252?Q?zXmXLaLKLcVvk/yorCQMGhzRvbG/0BM+iSqQa65vM853qAparjpHUSvA?=
	=?Windows-1252?Q?XOhffXwxuQsC/xzdb6DjcCW9eQzyHHcHjDNSGrvxdf4DD2gO3F0tPQNV?=
	=?Windows-1252?Q?fOp8ZISvSy4SojojvohcQ24Auji/fjQUlrPP5Ram+ya49VcXt01nlYt/?=
	=?Windows-1252?Q?YOCcwMM8cBdYu2dOEczM8yOrfAxKkgcLcOZP55I/C0EFuWvf9JCctMwz?=
	=?Windows-1252?Q?0Tqs91RTw4nEkdjBSL62v8yPnb2N3yWO/vaN4NMhqXzzfjoEy04rTf4F?=
	=?Windows-1252?Q?4lXm5QKj4ywZwsBZD8vYv8+0IQoqr28usMampzkanaMdoc4z3fJRs7VL?=
	=?Windows-1252?Q?id0BF5Un8nyJCnto8wbTalpXLLILF43YchHx8t9VhRDhiP25O3xrz65H?=
	=?Windows-1252?Q?l5nru6WI5xXu2CWEyDBem8prJ3z0ShSMFM+sS3+f3ulvmyfWxg7Loji6?=
	=?Windows-1252?Q?EfT0qjYoDDqxtphVNs3bIU81JsdsJpoRIcRactEnggS0uzvxFIa280Oh?=
	=?Windows-1252?Q?CLx8qK7SYcqlFI/n1EE7zr/kOPIW8y89OcL8RfvMAl4Bz290wO5+2LjS?=
	=?Windows-1252?Q?BJHXRa+VzL6AaXM2C/E4Gfk8dm7ClOrhXJDj/CEIawOx1c3ecIZl/6Dr?=
	=?Windows-1252?Q?w3x/UD8/sfH1hqVOBUxevguhOyyayry+5Ae0nQoyToWtvaV0BYh72Y7U?=
	=?Windows-1252?Q?XnoaaYGK+2oJLw3uSm9Bh?=
X-Microsoft-Exchange-Diagnostics: 1; BN3PR0401MB1313;
	6:13cMjB2asgCDPRCmXe03GQO4oKO9RYNey30WjiuQAuR0ovA1RyuTviuiIIn791NSL/GObcQoNhH92BXSNNoa1OwOZfgitOHFv/Yqgy80KimOrr4Ha2F2LNks7fAsUrAsKUgIC+tySRuXYRhiI954PmHXmcNinHfSLXmsSTsC8V66Vh+5CmLCGyv9pabwxk8IUnQ4rWtNJPGzmEfKpIiWg+ziz8CR0YHwKD91FwVlOVHW6MZRVi668GXZgnWigq+lmIaGaaVFZ7abc/7kZyQY+7IwzGoVywTNeBi8vdnbH2ibC1siOAGKuT1NR8V8D2vjiZ0MICWdK32CDk8QaAUM9fFCVfkiDV/o6psVhzs2oYWlnwZdvUI6f1aTzuMXmMuwC/hjpCpjF+O2CDbMhw6Vdu9JsY9JoCTbIlHkkia7gTnDAaNqDgNvpQuQKsq4U6Q8BEeFzlik5sJKmT76kSptdg==;
	5:r/rLLIFDTLwo5xQ8qD+YOck4e2VAbK6x305Ck+uk8YVOX1yworzHWB6XDt+fBDzLF683MxEfP7cxC7VyFmmIqXDB/BdxWHXfmO6eTCk+tN+JVTZWMwPLOUtIfADMBFV5wOTNhvTZpAQw13Enh5Hm8w==;
	24:k+Wr149Qli1w+LZJNC6FqMdtK2M/dH7R5jCxoZPiCBOtp+q6RSEYCtwlTQwhUiKNCZjT+MIYuxifqWuCPI5843sp3F6F9Or8qnZPqUydpBs=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; BN3PR0401MB1313;
	7:Ax0bWPllmyRtIjfYezZ/w7ADdSS6t+FoDAvchQPAw1TuYXz8aG5+sYGt0yq1KwWE2KpdgG+/YjuC5upDbz/HI5EtE88SWR8xYYpx2zUdIyFpwDtR+eHoCf5Rkbf4dgKWfdGHlQnnxXZnOk+q7Uo/VQZ7b9O84ddKnCpegiayMtV6A7syItSIOJhKbKaYmmgrzJTVX28lhwW0bhLomJHszcuxquBdCELhwn0IuaTcd/+MBD6goKo45aYz5jvKHQI/eCgKMn78n8JLLRqxEetQmbDmyZ0wtSZjmr/ypYPBHTLa+FE/H+Ig44iiyuk4LU+nsYlca55xjWDS677IyGGSzQ==
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2017 18:42:42.7988 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0401MB1313
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2017-04-11_15:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy
	score=30
	priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1011 lowpriorityscore=0 impostorscore=0
	adultscore=0
	classifier=spam adjust=30 reason=mlx scancount=1
	engine=8.0.1-1702020001 definitions=main-1704110143
Subject: Re: opkg behavior
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
X-List-Received-Date: Tue, 11 Apr 2017 18:57:01 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 04/11/2017 08:03 AM, Gary Thomas wrote:
> I'm using opkg (IPK) packaging with my Yocto builds (using recent
> master 633ad6c9f).  For the most part, this seems to work well,
> but occasionally I'll rebuild a recipe along with the packaging
> indexes on my build machine only to find that opkg doesn't want
> to upgrade to the changes.  Here's an example:
> 
> * Update the package databases on the target board
>   root@teton-p7621:~# opkg update
>   Downloading http://192.168.1.12/teton-p7621-feeds/all/Packages.gz.
>   Updated source 'poky_am-all'.
>   Downloading
> http://192.168.1.12/teton-p7621-feeds/cortexa7hf-neon/Packages.gz.
>   Updated source 'poky_am-cortexa7hf-neon'.
>   Downloading
> http://192.168.1.12/teton-p7621-feeds/teton_p7621/Packages.gz.
>   Updated source 'poky_am-teton_p7621'.
> 
> * Try to update the package I just rebuilt.  Normally, this does the
> right thing
>   root@teton-p7621:~# opkg install production-tests
>   No packages installed or removed.
> 
> * Odd, check the packaging
>   root@teton-p7621:~# opkg list-installed | grep prod
>   production-tests - 1.0-r0.74
> 
> * Force the install by removing the existing package, etc
>   root@teton-p7621:~# opkg remove production-tests
>   Removing production-tests (1.0) from root...
>   root@teton-p7621:~# opkg install production-tests
>   Installing production-tests (1.0) on root
>   Downloading
> http://192.168.1.12/teton-p7621-feeds/teton_p7621/production-tests_1.0-r0.76_teton_p7621.ipk.
> 
>   Configuring production-tests.
> 
> So from this you can see that the package has been rebuilt (using
> the PR server) and that I can indeed install the new version.  That
> said, why did opkg not "upgrade" as expected.  Note: I often use
> the 'opkg upgrade' command but I recently updated my Poky/Yocto
> repository which caused nearly every package to be rebuilt and I
> didn't want to have to download everything (none of which affected
> my current program which is just a python script), so I chose the
> 'opkg install ...' method instead, which does seem to work sometimes.
> 
> Any ideas what I can look at or tweak to get this to work the way
> I expect?

Opkg uses libsolv as it's solver backend. When you say 'opkg install
production-tests', the solver doesn't do anything since package
'production-tests' is already installed.

What you want is a targeted upgrade, which can be done by calling 'opkg
upgrade production-tests'. Another option is to do a by version install,
which can be done by calling 'opkg install production-tests=1.0-r0.76'


-- 
Cheers,

Alejandro

