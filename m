Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F5E2E00DAB; Fri,  6 Oct 2017 14:51:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.156.75 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com
	[148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C4E4E00D8F
	for <yocto@yoctoproject.org>; Fri,  6 Oct 2017 14:51:00 -0700 (PDT)
Received: from pps.filterd (m0098780.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.21/8.16.0.21) with SMTP id
	v96Ljx2I020550; Fri, 6 Oct 2017 16:50:59 -0500
Received: from nam01-by2-obe.outbound.protection.outlook.com
	(mail-by2nam01lp0180.outbound.protection.outlook.com
	[216.32.181.180])
	by mx0a-00010702.pphosted.com with ESMTP id 2deg4nrpv2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Fri, 06 Oct 2017 16:50:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector1-ni-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=DsTmo+NYAOfLOPbZ4XWhMf0aWdAt9xvK+++eGLdlblA=;
	b=NW6L9yay6+4NNDraxpwmvJHUkZeJMeChOCEps0Lj78i8F/VU8rY55OckQN9rZX2oMKJxmp8AdO+jdFTYgGwNWxcROwM9p+d4uPMIjOulpa3GOACXlOkGxH3DVsawcvwboMLbJ29mTuVpAk9iC9XvSslvKk4TDrC6UOi+gUYeuKk=
Received: from [10.0.62.35] (130.164.62.108) by
	CY1PR0401MB1324.namprd04.prod.outlook.com (10.161.213.16) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Fri, 6 Oct 2017 21:50:55 +0000
To: opkg-devel@googlegroups.com, Jeffrey Pautler <jeffrey.pautler@ni.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <DM2PR0401MB129591A05F292795981061D596700@DM2PR0401MB1295.namprd04.prod.outlook.com>
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
Message-ID: <4f3c1d0b-763a-a4ba-42c9-91f46f97a17b@ni.com>
Date: Fri, 6 Oct 2017 16:50:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <DM2PR0401MB129591A05F292795981061D596700@DM2PR0401MB1295.namprd04.prod.outlook.com>
X-Originating-IP: [130.164.62.108]
X-ClientProxiedBy: MWHPR2201CA0090.namprd22.prod.outlook.com (10.174.103.43)
	To CY1PR0401MB1324.namprd04.prod.outlook.com (10.161.213.16)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fd465fc8-4dd5-41bb-fe1b-08d50d045287
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:CY1PR0401MB1324; 
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0401MB1324;
	3:RWkSBuSZrQ43dJ5uXaZ4QlhRryChNiB2ZZDBseX9TzxsSobCMkXx5HvAI5UPL62BF+X8hB8ufkiVoj8FxiNFbwe/uoNsr79fSa8HTsrLUoA10bgNoFqVyIQDo5MfqgbvjvncUgU+hIaQFjkz8VK5xU55vA5cAMEY9INQhuo8/7oLQUlX0fgtlnrhVJT0CNwMcLpFFgLBlzzP0QieULxAOaPalWr7yGXl+/bNMrec9RLviES6/Iwy+FCgcwWiW+Ll;
	25:2oP/+vD0J9RHZ/usXM0HwuwZvKzK9a9ffUI/bL8sXvi+B1zDssVFi7K/pbRCiGFedDYYz4tOIls6CCtpIq+qcWGqcb7ALIm0zXBK+3cY1Gl5pVYVv/oICHkWBXJ4uBcZWkhpUUmF45SCOqHm2bnkbtLKTQnXwx5H9NKbfozx2nUlMXJSsjfBozXDVlCzvgH/0XyOOMmChngEOk8I7QOCuPRtWpS7GPKALhJl/f6J+zFmv2Tb/dOuIYl8Br6z1zVmg9WJ8WZlxkYTsUQbovZeL5pPJdThZEIpkAK2XSDLKtPkSlUdr4106wXO7ZMt6Ew2WNeG5fmrkTQos1gOVXpjcw==;
	31:BlNyhX29nlmsxKGDiZoatv8CuVdEV19sGOqS3NlWk0VuvOYPBf/rGd58qoNKeitm9kWzMK/csA4F/JaTM8dp9nw4nn19pTAOg8JV4EdaVC9Rlg3E0hgdW8W7h3NttcjeFoM/WLG/kb/mVZjVr6MDCAe6yNyGWOsLVcANOBT68kM1NJnO/F6a1OrN0ytMikwVhU53Clz/hb0w6MARDUyYxfv8g2hyZ/HXFSAfiBjbB0g=
X-MS-TrafficTypeDiagnostic: CY1PR0401MB1324:
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0401MB1324;
	20:F9PbVfHbcDfLNVRxnVyqMCsrVpr0VSfQkokI8MSVjPFzIDGHKsJUFhQNYpTIFX8TJehs6cpsGtwcRvbCAGL8evS+ReZ+7q7g4JDA80QOn2hX7TsQgNYwQD8zHtXX0EDoMUieJmNvyYN967Z7DoSyls9H0TVY245o7qmCDNHidDq7JV9u7SZ7oETBCrvNODJgb2HcQQdBg3TFM3vPzFVfCFBLn3/kBcvgGEd6LQTEiX4sPmXgi/VXMQ4cMcJa5oF6NxcAlxX3tl15mFb89oIEgPNAKDbYSpsFI3avjo7n5LP+NvqpEVS8r7dRQWWr4dpywWZirF2FEtLaUEaO2pUuWSI64BPUk47ct+a/3Ows11iXC3gXLVcaMgZs369gKTLtCJOGfZiIiTNskVkrsmC9ZLzWM28OXexrk0j6ZPfSwg7cKbHdtwWC+NYhCBHniYUkwCMjrCMMNjy2dALqldVQUy+L0jxdchIS01ywW9v0GkM9DD2AMbLQAN3mOrSSZC7JxrzzEeME0Y4JeUw0s+/hjvblewNHs/hYDSf9PAJGzT/k+u62SGmidAZroNGI8WnrGDpyHV1H4rXlDmbys2hVWgGWHhh7VHUOsHdoVqvusUg=
X-Exchange-Antispam-Report-Test: UriScan:(215639381216008)(10436049006162)(228788266533470)(211936372134217)(145744241990776);
X-Microsoft-Antispam-PRVS: <CY1PR0401MB1324B0555DBD66C58488CB6D86710@CY1PR0401MB1324.namprd04.prod.outlook.com>
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(3002001)(10201501046)(93006095)(93001095)(100000703101)(100105400095)(920507026)(6041248)(20161123560025)(20161123562025)(20161123564025)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123555025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:CY1PR0401MB1324; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:CY1PR0401MB1324; 
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0401MB1324;
	4:nlHKyt/xn1xLtIsabDF6T3BTUc12i5EqBogrLtCSlR+LfhfxlRcgj9dLCC+t7rxIn6vuXYHLZ7TxpHmlDScQYdjBwMDOiyAe86EMav/CsK7nzKuwvk/+JfmIMT2XaBmT0kwtC5ychK1Z9cm+hb71shFTa//A8oL7rt2V8zpTdExEG4vyWPz2/25LSAvQ+5hj9ZjhU0PoNunBXoi6EnLAsRVkCyZtV0lhW3SiyI7xMI64KsrwgzFymUA8uIBH3w/hBHoOBrqoYJDHqcus88b1Ic0qGKYLcIoByqBZVt9LylMftG/szaemkyZeoJ7ovOuScDISlBNJ7e2d5JPigCjE+iyJ2phB0yD2mEjYl3/T9CdtIwq2pz9z/GVoserHCLZgGPQzheyySKv5oRrvsVkFwyvZrusPxvbwiNO91uBo0A2M6/oCRmPZ7kwQ70FLGoxj
X-Forefront-PRVS: 0452022BE1
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6009001)(6049001)(346002)(376002)(39830400002)(377454003)(199003)(189002)(24454002)(51914003)(6486002)(230783001)(81166006)(77096006)(90366009)(68736007)(53546010)(36756003)(2950100002)(76176999)(101416001)(50986999)(31686004)(66066001)(2906002)(2870700001)(65956001)(65826007)(33646002)(106356001)(47776003)(229853002)(2501003)(65806001)(189998001)(31696002)(316002)(16576012)(6666003)(23676002)(50466002)(54356999)(58126008)(105586002)(3846002)(6246003)(6116002)(53936002)(16526018)(34040400001)(110136005)(575784001)(8936002)(5660300001)(966005)(86362001)(7736002)(8676002)(25786009)(81156014)(6306002)(478600001)(83506001)(97736004)(305945005)(64126003)(115813001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY1PR0401MB1324; H:[10.0.62.35];
	FPR:; SPF:None; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
Received-SPF: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtDWTFQUjA0MDFNQjEzMjQ7MjM6OEZybEQ2TlRKVXRRVTFaZENxdmhtODc1?=
	=?utf-8?B?bHFQcStxOXY4eTRaYmY0VGwwNzRaTVpzMDcwRnJDUnRIbkNVNFFjMVg3UWd2?=
	=?utf-8?B?QTV1b215ZkpvNVVaK1ZyZjVaUHI4ZmNBUHFUV3pmZmtHY3Y3Vjg2VWxLRkk0?=
	=?utf-8?B?ZzZ5RWtMMmgxb1dTdXY1MmF4RzNpN0xUdlczdXc3eTN4MW9DT0c4Z2tIU0Uz?=
	=?utf-8?B?eWVYc1RRS3NJNEFjUVpIMlVqYi9MbGR2SVBycG9GUjRlYkVjMjdyRkorNlEx?=
	=?utf-8?B?QnNyeXdTc1F4SUxJS2duOVpEbDBIcUZzbkRya3BCeTVhTUtwMlNzdG9Gdk80?=
	=?utf-8?B?eEtleW0wNU5KSXpvRW4yamhiR1ZMWXA5OTNSeVFhejA2bFBsVEJCMG9JejM5?=
	=?utf-8?B?VzEwZW81RVBQZE1YR3YwQmVSV1BmSTJkcVZYYkdVTkdPOVowRzhKNjJpdTA4?=
	=?utf-8?B?S3FVNFVlMWo0WXhRem41bnh6ZkJMWVNHWnMzU2RMVU4xOFc3TVM1OVpQUjha?=
	=?utf-8?B?aDUzWkZkZEJiQkM0bW5HTVpMUnh2WU9LSGxUaXNTazJ4Ny8zK1NIZ0hQQXRH?=
	=?utf-8?B?cFRkaFIzaWpCa1NaNkxSbmpsdjZpK2xYdkdNclpyNEFLbDF4REE5UUY4amFn?=
	=?utf-8?B?Q0lQMkc1ZVFMS3NqSEVlL2ZnaEc4cnhrN2tUMHRDbDdqWC9vNktUdEdNWXNO?=
	=?utf-8?B?bVQ0eUEwT3hETUo3YlVzMXp3bXF0ZEU5ZGN4Mk85Q1hVNDVtZkYxN2JBeEdq?=
	=?utf-8?B?ZlI2UDczZ2JUQkplN0Nldlc5V2R5TG85emM2REVpUEEyd2lQM2ozaExYeDJB?=
	=?utf-8?B?TkdBQkZyTGJmR3hwVHMreXh5czJCRE44aFZPNEpVZXo2dVR0ZlFpaUJPU2Fk?=
	=?utf-8?B?UjIwUkFCVlhvTGpZY0hHSk9OMHdFUDZnaGM1MllIRS9TSVE2Vld4MnMwU0xv?=
	=?utf-8?B?VHljSURJOEg0aGJKdWZSdTBjQU5Cbjhja1VUYkQxWmx3OHpKWlpxTzRiOTJx?=
	=?utf-8?B?UjNWT1pVdkxYQytGb2JXYk1vcUlBalVSYmZ4MlJxbCsxVEtBNFpRY0JwVThm?=
	=?utf-8?B?b3RpTW10dDR3OCt1QXZYR3pJNDFMYlp4bzZvZmU4VWg5N2wxSE1aYVUvM0Y4?=
	=?utf-8?B?aG95bnUvZlZEY0l2Qm9BU3NKRnIwWG56T2dCOFBkQmJHK3dIeWFJczgrVnFV?=
	=?utf-8?B?RCt4YnQ2eXlYUGtMeTJ2OEJHU0hRRlBqcEZMM2hrWXFKSXR4ekh1ZGdJSzRG?=
	=?utf-8?B?M2NIZzZrZHhEelVRWk82TVJTMVZOZVVJb1lLU2grT25ic2JEeENEWU5kcFEz?=
	=?utf-8?B?ZXFId3BSTkp6YW9GRU1wTjVjcUtPOWtIRVlITTExbDR0dDBmMUVNWXBiSkZj?=
	=?utf-8?B?TUlqZjV1Sk9VSENVS1FNRmhuZWFZWXNPSzdIRFJmeWdCNWZ2NmtnelNaMi9I?=
	=?utf-8?B?b2pOK0JpZmpQNXRJNjUxTk53VTNYUlFkMWg1ZmpRK0FpRCtMbnkvWmsyNmxi?=
	=?utf-8?B?Tm1SMDJFbzVSRk96M0xpdHl2VTFhWDhGNHVRblRjMy9wd3Z3UkM1VzRVL1pu?=
	=?utf-8?B?UUpHWE81YUNuRXhUaC9yNEE4a2hQbmE4dXlCTXFFQVBna3Y4YUw5MW10RjRo?=
	=?utf-8?B?eTdnLzgxTkVOdWdFVGU1cTRHUVY2cDRWc1BmZHZ3cEJmV1lJaXhrWVFhOVg1?=
	=?utf-8?B?ZTE2aFZNWGpwOXZEaEx6TzN0WG0zZDJWYWQ5clJtcEgxcVRWOXZQOUw2ZkJR?=
	=?utf-8?B?QVp1TzdhaE9TajRUK21sYi94QkxJWXFXVzdDZzZ4dC9HNDFZTm96R01YM3N5?=
	=?utf-8?B?eit1cVhqRnRORW0zS3NRQWFiSERablYvMFRLZGlxL1ZXeURVaWRranNTTkJ0?=
	=?utf-8?B?UTZDTFVyRjhhakhjTk9wYjV4akFaWmVoNXpURFVDQnVJcnpQQXMvb3Z4NUpZ?=
	=?utf-8?B?VkZZbk5ab1RTSGJEVE9ndm1iTFVvQTVsZzNhbHZOWFJPeXYrS2FjcVlxWTlZ?=
	=?utf-8?B?T3BqUzhyaFpyTlhzbUo5emFmOUo2N3o0OVdidFpKUEQ4M0FZUmN0VHNDaFdh?=
	=?utf-8?Q?KFFkUVp7tOpSjRurWToYmhDy1Z7?=
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0401MB1324;
	6:zl+NiEY9Hz0QtVtjw+aKQIuuoyX5QgPb9U/7fuIN/T2kMH12aIWiWRLVuTntBkgUi8CwZFkAfXO76pcZtl7e1jzB58EwSgDkTgaJonURuhG2Rhf7IZFt/F+Ob2j6k4PVJCHLH4JFc4Aif7b2u32nCttDoF4vqPEbloiXo9jbg/j/9xZHh/SfH8lna95G0M5dAkts9iSzbunJ2zHBDvCINntBHFPKVA2w0jgUxrvBGaTVm9FNmb/ErYyzUAZIXEAyuQmmhxDDTgB/vWGykcamOKC+dzeb0I6EGqjkkxxu7HBbb8BT3pPB840Rvkb6mp3t7FlaNEWS+K8tkkwj/8Ndcg==;
	5:GerVQndnO6ba6dBem5xAIZ47Bd6C0Xhcs+g5o2xDxIAA23ZuQZWfNUJ82LG8HGlB8e/2ODK28xeczhbtEnng2n2Lo6wOhzuVDPP3VT+jAvv/fIHboGNoDfdLvvpcYi7kJ7QlY603fQt/wBG1HJxd1w==;
	24:gpBP0et8ILGmnL/FJBiX/3ucqr9BpAKg3iHKDYYWlJ9sLjCzxjhJERMdrTi5fP9aitfuVyv3vtan/J3sLpowvHpHDNiPgpgMR3gcH4mpWew=;
	7:47U4UV4777L5BW8le+3DhBwE5vjz8E0x8EoJcNHr3vfHnS4mXEqqVK8aO18SwTNUxsjuA8u/hc/e+wtfhviX1MFuSqDu/YS62Pztrl/ioXnE70f/nQzdLLNF1sk0gxHrFLTIwnl86EDJ7PtV1PhFqXfPP9YnuxaBzQoceyPFsTpd0pQYrfjbBF6r6w+IjAV3JqLQvOV+GPqQ+LID1JHqpng6sm7mhn26Eq97h6F4ffQ=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2017 21:50:55.2061 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0401MB1324
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2017-10-06_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy
	score=30
	priorityscore=1501 malwarescore=0 suspectscore=2 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1015 lowpriorityscore=0 impostorscore=0
	adultscore=0
	classifier=spam adjust=30 reason=mlx scancount=1
	engine=8.0.1-1707230000 definitions=main-1710060302
Subject: Re: [opkg-devel] [opkg-utils PATCH] opkg.py/opkg-make-index: Add option to include all fields
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
X-List-Received-Date: Fri, 06 Oct 2017 21:51:02 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

yep, that makes sense, thanks for the contribution

merged

On 10/05/2017 12:03 PM, Jeffrey Pautler wrote:
> If the -f option is enabled, opkg-make-index will include user-defined
> 
> fields in the package index rather than discarding them. This change is
> 
> motivated by the fact that opkg now has support for user-defined fields
> 
> in the package index.
> 
> Signed-off-by: Jeffrey Pautler <jeffrey.pautler@ni.com>
> 
> ---
> 
> opkg-make-index | 11 +++++++----
> 
> opkg.py         | 28 ++++++++++++++++++----------
> 
> 2 files changed, 25 insertions(+), 14 deletions(-)
> 
> diff --git a/opkg-make-index b/opkg-make-index
> 
> index 3f757f6..3227fc0 100755
> 
> --- a/opkg-make-index
> 
> +++ b/opkg-make-index
> 
> @@ -11,7 +11,7 @@ import re
> 
> verbose = 0
> 
>   def usage():
> 
> -     sys.stderr.write("%s [-h] [-s] [-m] [-a] [-l Packages.filelist] 
> [-p Packages] [-r Packages.old] [-L localesdir] [-v] packagesdir\n" % 
> (sys.argv[0],))
> 
> +     sys.stderr.write("%s [-h] [-s] [-m] [-a] [-f] [-l 
> Packages.filelist] [-p Packages] [-r Packages.old] [-L localesdir] [-v] 
> packagesdir\n" % (sys.argv[0],))
> 
>        sys.exit(-1)
> 
>   def to_morgue(filename):
> 
> @@ -43,7 +43,8 @@ stamplist_filename = "Packages.stamps"
> 
> opt_s = 0
> 
> opt_m = 0
> 
> opt_a = 0
> 
> -(opts, remaining_args) = getopt.getopt(sys.argv[1:], "hl:p:vsmr:L:a")
> 
> +opt_f = 0
> 
> +(opts, remaining_args) = getopt.getopt(sys.argv[1:], "hl:p:vsmr:L:af")
> 
> for (optkey, optval) in opts:
> 
>        if optkey == '-h':
> 
>             usage()
> 
> @@ -64,6 +65,8 @@ for (optkey, optval) in opts:
> 
>             locales_dir = optval
> 
>        if optkey == '-a':
> 
>             opt_a = 1
> 
> +     if optkey == '-f':
> 
> +          opt_f = 1
> 
>   if ( not remaining_args ):
> 
>        usage()
> 
> @@ -81,7 +84,7 @@ if old_filename:
> 
>        if (verbose):
> 
>             sys.stderr.write("Reading package list from " + old_filename 
> + "\n")
> 
>        old_packages = opkg.Packages()
> 
> -     old_packages.read_packages_file(old_filename)
> 
> +     old_packages.read_packages_file(old_filename, opt_f)
> 
>        for k in list(old_packages.packages.keys()):
> 
>             p = old_packages.packages[k]
> 
>             old_pkg_hash[p.filename] = p
> 
> @@ -122,7 +125,7 @@ for abspath in files:
> 
>        if not pkg:
> 
>             if (verbose):
> 
>                  sys.stderr.write("Reading info for package %s\n" % 
> (filename,))
> 
> -          pkg = opkg.Package(abspath, relpath=pkg_dir)
> 
> +          pkg = opkg.Package(abspath, relpath=pkg_dir, all_fields=opt_f)
> 
>        if opt_a:
> 
>             pkg_key = ("%s:%s:%s" % (pkg.package, pkg.architecture, 
> pkg.version))
> 
> diff --git a/opkg.py b/opkg.py
> 
> index 9131755..cdadcab 100644
> 
> --- a/opkg.py
> 
> +++ b/opkg.py
> 
> @@ -45,6 +45,7 @@ from stat import ST_SIZE
> 
> import arfile
> 
> import tarfile
> 
> import textwrap
> 
> +import collections
> 
>   class Version(object):
> 
>       """A class for holding parsed package version information."""
> 
> @@ -123,7 +124,7 @@ class Package(object):
> 
>       # relpath: If this argument is set, the file path is given 
> relative to this
> 
>       #   path when a string representation of the Package object is 
> created. If
> 
>       #   this argument is not set, the basename of the file path is given.
> 
> -    def __init__(self, fn=None, relpath=None):
> 
> +    def __init__(self, fn=None, relpath=None, all_fields=None):
> 
>           self.package = None
> 
>           self.version = 'none'
> 
>           self.parsed_version = None
> 
> @@ -153,6 +154,7 @@ class Package(object):
> 
>           self.fn = fn
> 
>           self.license = None
> 
> +        self.user_defined_fields = collections.OrderedDict()
> 
>           if fn:
> 
>               # see if it is deb format
> 
>               f = open(fn, "rb")
> 
> @@ -176,7 +178,7 @@ class Package(object):
> 
>               except KeyError:
> 
>                   control = tarf.extractfile("./control")
> 
>               try:
> 
> -                self.read_control(control)
> 
> +                self.read_control(control, all_fields)
> 
>               except TypeError as e:
> 
>                   sys.stderr.write("Cannot read control file '%s' - 
> %s\n" % (fn, e))
> 
>               control.close()
> 
> @@ -215,7 +217,7 @@ class Package(object):
> 
>               self.size = stat[ST_SIZE]
> 
>           return int(self.size)
> 
> -    def read_control(self, control):
> 
> +    def read_control(self, control, all_fields=None):
> 
>           import os
> 
>           line = control.readline()
> 
> @@ -227,19 +229,22 @@ class Package(object):
> 
>               line = line.rstrip()
> 
>               lineparts = re.match(r'([\w-]*?):\s*(.*)', line)
> 
>               if lineparts:
> 
> -                name = lineparts.group(1).lower()
> 
> +                name = lineparts.group(1)
> 
> +                name_lowercase = name.lower()
> 
>                   value = lineparts.group(2)
> 
>                   while 1:
> 
>                       line = control.readline()
> 
>                       if not line: break
> 
>                       if line[0] != ' ': break
> 
>                       value = value + '\n' + line
> 
> -                if name == 'size':
> 
> +                if name_lowercase == 'size':
> 
>                       self.size = int(value)
> 
> -                elif name == 'md5sum':
> 
> +                elif name_lowercase == 'md5sum':
> 
>                       self.md5 = value
> 
> -                elif name in self.__dict__:
> 
> -                    self.__dict__[name] = value
> 
> +                elif name_lowercase in self.__dict__:
> 
> +                    self.__dict__[name_lowercase] = value
> 
> +                elif all_fields:
> 
> +                    self.user_defined_fields[name] = value
> 
>                   else:
> 
>                       print("Lost field %s, %s" % (name,value))
> 
>                       pass
> 
> @@ -490,6 +495,9 @@ class Package(object):
> 
>           if self.license: out = out + "License: %s\n" % (self.license)
> 
>           if self.priority: out = out + "Priority: %s\n" % (self.priority)
> 
>           if self.tags: out = out + "Tags: %s\n" % (self.tags)
> 
> +        if self.user_defined_fields:
> 
> +            for k, v in self.user_defined_fields.items():
> 
> +                out = out + "%s: %s\n" % (k, v)
> 
>           out = out + "\n"
> 
>           return out
> 
> @@ -523,12 +531,12 @@ class Packages(object):
> 
>           else:
> 
>               return 1
> 
> -    def read_packages_file(self, fn):
> 
> +    def read_packages_file(self, fn, all_fields=None):
> 
>           f = open(fn, "r")
> 
>           while True:
> 
>               pkg = Package()
> 
>               try:
> 
> -                pkg.read_control(f)
> 
> +                pkg.read_control(f, all_fields)
> 
>               except TypeError as e:
> 
>                   sys.stderr.write("Cannot read control file '%s' - 
> %s\n" % (fn, e))
> 
>                   continue
> 
> -- 
> 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google 
> Groups "opkg-devel" group.
> To unsubscribe from this group and stop receiving emails from it, send 
> an email to opkg-devel+unsubscribe@googlegroups.com 
> <mailto:opkg-devel+unsubscribe@googlegroups.com>.
> For more options, visit https://groups.google.com/d/optout 
> <https://urldefense.proofpoint.com/v2/url?u=https-3A__groups.google.com_d_optout&d=DwMFaQ&c=I_0YwoKy7z5LMTVdyO6YCiE2uzI1jjZZuIPelcSjixA&r=wNcrL2akRn6jfxhHaKavUrJB_C9JAMXtynjLd8ZzgXQ&m=ovQLEvQ9Lx-7vCjplOAzesO39gF_IJUaWHnH7MYJRKk&s=Cjo25iHoDUxMx8anWywj0hPZTramOkXjGn9UCLksWcU&e=>.

-- 
Cheers,

Alejandro

