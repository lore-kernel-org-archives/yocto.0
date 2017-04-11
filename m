Return-Path: <mkelly@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED113E00AA2; Tue, 11 Apr 2017 16:21:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.83 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 8287 seconds by postgrey-1.32 at yocto-www;
	Tue, 11 Apr 2017 16:21:38 PDT
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0083.outbound.protection.outlook.com [104.47.38.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDA8CE009C2
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 16:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=BHdjOOEhxQ1c8JIvCUX9BQMMFFYCHoBb7Px7VWc1W1U=;
	b=zGXhmP8fp8CMLyXHhvzBtZlTAlK+nY1356T9IeLUSk1OEgRX8ETgd1pS5iinXWTJpKwC47k9le5VALWLDw2bCswfQnmepBAph2zHyIV0gBpTdGrRZ8F7UVjrwdd8Ai1Q881ijWmi9lNg6BknEp3XqNUOhSPWDlRQTVMu+sUGaBQ=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=xevo.com; 
Received: from [10.0.1.79] (65.122.179.226) by
	DM5PR01MB2682.prod.exchangelabs.com (10.172.185.140) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1019.17; Tue, 11 Apr 2017 20:47:45 +0000
To: <yocto@yoctoproject.org>
From: Martin Kelly <mkelly@xevo.com>
Message-ID: <ba1a6361-3fd4-63f7-3752-63c75dff1347@xevo.com>
Date: Tue, 11 Apr 2017 13:52:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
X-Originating-IP: [65.122.179.226]
X-ClientProxiedBy: MWHPR11CA0023.namprd11.prod.outlook.com (10.172.48.161) To
	DM5PR01MB2682.prod.exchangelabs.com (10.172.185.140)
X-MS-Office365-Filtering-Correlation-Id: cf09bdbf-1cdd-4ecd-3550-08d4811c01ba
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201703131423075)(201703031133081);
	SRVR:DM5PR01MB2682; 
X-Microsoft-Exchange-Diagnostics: 1; DM5PR01MB2682;
	3:5i4Qygw47njaDA9UM80DwXrRDbVgIhRRgqwCtEgHnQQZJUwJnfRwhwTzXWHAe6krhGQMe6y1wd/ULKHBRZg9YE/xxbtXLZ3t+hq2y+sMCkqaHK01XayJb7d59KqbyaE0AgBzodhP0mUtBbYOsJ4+LeXy4LbwHZ1cl3dIxZykYQ6RaLuxqp56gihQARJF9Du+N5O6A10yH9POnF3RHmlsu+lrshGNmGjUvy1wbakqqH/BT+sByNHo3Mctu6cLyRfRGfsfRpUYr4dqQtKG0JoFdDaj7MIkO0JMtPOYDlv+nlcPZJZbbOHw6pQYroW5yC/CZpUzvqipZpBi2DwOfNapsQ==;
	25:IdRk2+wcLsFpVzJVdpdvlD3NFIl9BAkdjEDdPbFGVB0laxDw9swzebxPTNs53WY87wmJEnub14msWxTn0R23A+i7nvQ1FdVXrdmgxCd92e8U1xcEhkxxqTcEPcC5k+TE03kcKK8DVL8MQwK16HlylAJJ5GGpZXT5kMheiL4a0PaufIYDNx8kl/EofmYxrZHmkuluCJEllBdF5Qdi38IldQZwbp3BM/kxxS02aCrj1vKiyfdMj+TYsGUmEAqBVsEduopUbB1jIufopAmmgpfpSLIwM0c7pV/PAIyHB5+Pwxn6+epOPGUvnHU66iBi6BUiWPj6Dz7J6vPmnoj/znhe3V1PGdUNIwjpB1JaQ4B+lEXBDPA0vGsMT1T1vLL2Q2mynnsGuRC22qceE5lkjQs9B5pyzG1YDshP8zikfybrKanuqUirN/3FhCRP9yMI5NkHCv0+Z5oSU6HoR3lJIz5V5Q==
X-Microsoft-Exchange-Diagnostics: 1; DM5PR01MB2682;
	31:KZJV+vxGZh4j2USOTthNHS7/C3iRpkCV2Vfu2qmeVZwuJqGXeeLC3m7Wyx/JwlMMVkkWNCZjBcAmeg33Vu/JYvreEOuz8XU8/5GDULKWrm7e+pZz7ah4R+3Nn/mWrIGyayUqJbVKrXppqGQ6RhBvWOtXk8UJVYLOfRDTaSzeC455Y7ozcTdNdIQGat3+/+9zJO9mAGJj6GcIC/MmGRxuKoSyvjSOIBKT0+AG6o2DuAyLDEHkBZdQYlQA74shZsb6;
	20:Wd9TE/8y6gIl8vKJx0uykwmuCDyd7MYV6FUl5H2MrLhbKttq7OLAHt1BpIzzxdBu1HSKxtfGopSOn+DtO8Aj2DpD1YZiGhqJobKhcHX9NvTcbNx0bCijPlABu1JLm3GYOiUFQLmKpLLrLLW+A10OVQseZq2C5kprGmnlDEvNa5W8AQ3ihJZePGtrca12b1x9SwuHuYFGP6QwimNX+mbDBWZp2eyys3EElwJK+YOYxOZZniHIBn1ML0FJxwjJ6BrkVHexhyv7l2Tya4xFffKg8C4Sm+rdaiCwp0ztzJCBIbOT9vHwGVm/mkW9o22/c0v0DyZoKxfXVwDkrfKxDgH2Mw==
X-Microsoft-Antispam-PRVS: <DM5PR01MB26820F9F90E40D0AD377150EAB000@DM5PR01MB2682.prod.exchangelabs.com>
X-Exchange-Antispam-Report-Test: UriScan:(166708455590820);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(3002001)(6041248)(201703131423075)(201702281528075)(201703061421075)(20161123555025)(20161123562025)(20161123560025)(20161123564025)(6072148);
	SRVR:DM5PR01MB2682; BCL:0; PCL:0; RULEID:; SRVR:DM5PR01MB2682; 
X-Microsoft-Exchange-Diagnostics: 1; DM5PR01MB2682;
	4:d1pM1HRJo+NMKlYEhk2n3iDYumTDly5qVWxLCtQtr8K1j870UW87oVJiiJlfzSLWCr0XqJqIDQ5eK4iosWIPgaU39xEbgJIioigfQ2+E3DsxdIZ40rdHpGWPnZcAHnURFcL56vzv6eUc6tcbK+Qc1+PuG2qLejJ4KIJViRspa+57samOZlHX6vf5+WVwZB53r9jJLwEhA8H+fkSLR8HoCSdXNyGcGMNBZDkjT/EsE9/lAj7jRmj5CiBVRA7Mjp77JCcKhj9N/XP+XbtPhyynz5WWgQjlIj1vkgbsmYpmKpJwVDtAHkdENRlcVhPuy/UH1uArpyGm7C0FQdZom+9K6RpGb5Y5LhkpZC7zWCXCbF293OcwYGYCc5faq9mR1JaD87d5QVZMN2T9yWX70J1qMtKyJep9r5JufTzuSjDSV//8hNlbYOD/goDtF4jpJsjqD19HJpaBl2mboq4BdBWO3pWDb1NZUfHvT4uBP6w96fPDuQOhnsE5EbRCkiOpM7NWmWcTgPUstpzvt7x+sJPvzIOSxNn5q6Xzfy2NHo8H2Hy95hRJ/PRg7mo5PrD+JtqbAzzDfzVdkC5jEfHVk4eQgXj3VDBFa/l5fAGWZPGQ25onvmk7dLw/JOmJs8ohv3/4hJYkAdRLGRo2C7Ntjaf2U43CZ4oyKL/FVxRhJk28KboGn4P1d48VxNk8nIkDbYlg62bqyXBEdi6wP5GFI/Doo5Kwkn9sZ5e8HJFTGFaSUCBhuMHYSKjnNCNT/bHOXraP
X-Forefront-PRVS: 0274272F87
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(4630300001)(6049001)(6009001)(39410400002)(39400400002)(39830400002)(39450400003)(83506001)(66066001)(8676002)(31696002)(3846002)(2351001)(110136004)(38730400002)(81166006)(42186005)(36756003)(50466002)(6116002)(230700001)(47776003)(25786009)(31686004)(6666003)(2906002)(7736002)(6306002)(5660300001)(50986999)(23676002)(86362001)(54356999)(189998001)(6916009)(53936002)(4001350100001)(77096006)(305945005)(6486002)(33646002)(90366009);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR01MB2682; H:[10.0.1.79];
	FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtETTVQUjAxTUIyNjgyOzIzOndJUStnVm5rYitsOEJsMUV6Nit3VGtmK054?=
	=?utf-8?B?aTBHakgxYS9OazFON2hzandza2JhL1FwUlRtNFFJRkhhN0d5ZmlGNHZ3c1Vz?=
	=?utf-8?B?bDNoYmgxUXRDZGJuR1JTd09WYlM2NUpOQ3VVMUQvN21rRG1HVXdsVnJQYitn?=
	=?utf-8?B?a3hKUjR5STVFbjlkc2FpNGlBTmx2cThmQ01RdDRlS2xLVjMzSUxudlE4RThZ?=
	=?utf-8?B?TTZlbVpOWXhrbVJOa0RYVmNaSXIwY1hESy9MR2hCSWJCVHVmNXNzQ2dFcEpU?=
	=?utf-8?B?TGp2WG9KdEh5V1JzTlVoazdacUJBOFpLWjA3OXhSc3R3bjdDd0xUWVlhcFZn?=
	=?utf-8?B?SnJNN2w5bUlnekUvY2EvMjBSVE8vUzhQS2ZzVkdoMDF3ZWQ5NzVtdEp6cE1p?=
	=?utf-8?B?NGZLU21veXdxMGtMZlRUa0VaRGw2cFRlMXpneW9NK3h0OWdxSXlSTG5YMUJ6?=
	=?utf-8?B?NDlBeWF6YTZ3UTVCbGFYTTFGWW5IZkxVVzBDb0txaE4wM3B6VExXM2x4UzhO?=
	=?utf-8?B?aHZSTzJpTmEydFdSb3V1eGNxck5lM0lwRWY1UXl2L1hWQ3hnT3FDUGpYVVpo?=
	=?utf-8?B?YWVMcUZ4WEo1VXNIYlBFQkZ6QXdHUGZrWTV5bm9EVW9USFFmU2dDRko2SGJz?=
	=?utf-8?B?SSsvMmo3dHJkQXU2c1dsQ2xMKytYY1h4YWNXNnFtOUF0b21Pb01xMm10dVJa?=
	=?utf-8?B?NGt3Mjk0UU1WYVh0TkFDVXI4NHA4S1lGVWdIclltY1NoNEp5OFpsdmJlTzVQ?=
	=?utf-8?B?Z3hJbnJNMExGL3FRRGUxYWFKUldEbVZwZHZzVUNoQjRIUUtvWWN2NTE0WVFW?=
	=?utf-8?B?dVRZODFKWkUzRUk5ZThzODBmczc5Uk9xc3N2TkRVU3p5SkVrd2kyaUpzR1ZH?=
	=?utf-8?B?NUh4U1ZaOWt0dXV5eWJhNzFzUmg4TG5DQStNaytlb1p5WHBpNmxwamc2NUkv?=
	=?utf-8?B?b1BSM0lXd2h5TDNTZkZqTTlpOFRUd1ZraWQ4UzZ1cTMzd2JzZzN3cG53ZmRS?=
	=?utf-8?B?Ti9MRGlxSzJ1NTB4VmY1U3V4L29NeHY3MDRPK3lIQmZmQWdrRWo0QmFaY2xi?=
	=?utf-8?B?aHBrdTN4TkxSeW1lUGhkYXB1NG1rQXppbjU3WTBKdTlVZXFQdVdXV2o0dk01?=
	=?utf-8?B?T0EyY3FGbXp1VHpRYTJFMmVkZVhrUGc5a2U2UVptdy82Zm0xZ2h5TTlzODZ6?=
	=?utf-8?B?ZXJ5SHlSc0R6U1dDTExLMGd5UW8yTXVBVVl6cnVodkRiS0V5VGNZQ3JCdDls?=
	=?utf-8?B?VTUvYWx4RzYzMVZZMU9CeFcrRHFwN0RTd0JOUDgway9ROWNlTFg1YzBWK0kz?=
	=?utf-8?B?MDgyWWFiWHFSbXZCbHJhREFabFpNV3BlYkhjWGVUamgwbDF5NDJDYWNrZU9R?=
	=?utf-8?B?N1ZiOXhRem1yLzd0WVNJQitMUlBJV0twOGdQbWdQaFYwL1VaQWQxTXFhN2pC?=
	=?utf-8?Q?EK/iEg=3D?=
X-Microsoft-Exchange-Diagnostics: 1; DM5PR01MB2682;
	6:/G3e+xoPS6gUoVv7+lxweK6P6IGR936VAAJ7Tm68weBO7vNqysYucCNxlr3DY21IIiCsjoW2xNT9Z4NDheYeOyRg9+njCSZE9iUGIQf3l5GuX99iXoFtDaBrFDoUHUXxiva5FuOTxNiv2obhY2VbUMcfP1EoWXQVhe8xXMe+K8NYWMU1iEafsNtoFHD/rnaD8+XUmuu6s46rDEtLfzV/TxJW6X9qYmcIxpaJt+C3oHdCCP2+5KsR0Qd542y03JY7r6l40O0Tm7aHXsk3fG4dvCP9TsgdidfzE9LXZozTLw7MrkLKE64y25COkEEKjIlqwDda0G7oXs6AUa5hWo2Gly7nQlR/kJIcJk/6rFdS4ShP/TbdYqst0EzpJKqZ06VEDNYaMISI0qjN4Mvm4gUb8bl6hO892Y0ufEwOKHoR/ri6Ah7VdPUVQ1ndvvqzMA8z+bIPH/RMBCfo7HmqWhw4UQ==;
	5:lZ+iutilMcwMb01ikPo6PuC545bk8W4ver7P6KF82ZxgHYF8cpyuNkKLrKvjZYIXSzhiIm1ACpdryJNTDRK3tXNlSzmbCF9vYOEPo3G/i7p7W04Ez0TfQK8CTsGfwZpRF+Uz0AwWvlQI5mJMbTI89A==;
	24:oS3El0UiKsL/onuPntGRNs8U7l5/UjPZyb1AMC3eJ9MtNey5zyS2gUH3thk4RSA8SMmQ4oe8uss2ciY+XL7N6CR8GJm/UCuv5pP9x5xGmDI=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; DM5PR01MB2682;
	7:DPlDaUtsE9Lz+Gdm7aVW0mLFXg0GrleMXmJ7bMyKSoV4dzQruRGshVrJ2npb2CD4FpuV1nICwih2XmruWBcHvX19byTqwjaL7hCQ8avoYK3V1dZBcJaXM3NTiE6FrUCt2StXC4kP9v3ixUeX1wwADI4BOUuRPDnUWsc0OhNgyr606G3VSQePjvAag6CpxrQs/cgIveyuUi/cEGUfonq2U4xXuQs3qVLGHvqi7hPmRE7Znh/uOB+WNSiCsReH4TtJjKMLrno4yQWcF2e+B2WWVMOYDPOiuknYWkslHYlXmzsdPXYAW+FpuOBBB/yPuDGrNFU8yap3ZBytEAARySDbIg==
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2017 20:47:45.2859 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR01MB2682
Subject: Relicensing an Apache-licensed recipe as MIT
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
X-List-Received-Date: Tue, 11 Apr 2017 23:21:41 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'm thinking about integrating the open-vm-tools recipe from 
openswitch[1] into openembedded (it massively improves the performance 
of VMWare guests) but first I have a question about licensing. The 
openswitch repository is Apache-licensed while the openembedded layers 
are all MIT licensed. I'm not a lawyer, but my understanding is that the 
Apache license is a superset of the MIT license (it includes a patent 
clause that the MIT license lacks), and therefore MIT code can be 
relicensed as Apache but not the other way around. If that's the case, 
then there's two options here:

(1) - Include this recipe in openembedded with an Apache license, while 
the rest of the recipes are MIT-licensed. This sounds complicated, 
messy, and probably not feasible.

(2) - Ask openswitch for permission to relicense that one recipe as MIT 
with attributions.

I'm wondering if someone with a better understanding than I have could 
provide me me advice about the best way to proceed.

Thanks,
Martin

[1]: 
https://github.com/open-switch/ops-build/tree/master/yocto/openswitch/meta-foss-openswitch/recipes-extended/open-vm-tools

