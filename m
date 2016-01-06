Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0AFDE00C77; Wed,  6 Jan 2016 13:54:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.138 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1960 seconds by postgrey-1.32 at yocto-www;
	Wed, 06 Jan 2016 13:54:21 PST
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0138.outbound.protection.outlook.com [65.55.169.138])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53472E008EE
	for <yocto@yoctoproject.org>; Wed,  6 Jan 2016 13:54:21 -0800 (PST)
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=alejandro.delcastillo@ni.com; 
Received: from [10.2.33.36] (130.164.62.82) by
	BY2PR04MB845.namprd04.prod.outlook.com (10.242.38.140) with Microsoft
	SMTP Server (TLS) id 15.1.361.13; Wed, 6 Jan 2016 21:21:39 +0000
Message-ID: <568D8548.9010006@ni.com>
Date: Wed, 6 Jan 2016 15:21:12 -0600
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <56791A82.7050809@arigo-software.de>
In-Reply-To: <56791A82.7050809@arigo-software.de>
X-Originating-IP: [130.164.62.82]
X-ClientProxiedBy: CY1PR08CA0024.namprd08.prod.outlook.com (25.163.94.162) To
	BY2PR04MB845.namprd04.prod.outlook.com (10.242.38.140)
X-Microsoft-Exchange-Diagnostics: 1; BY2PR04MB845;
	2:KM2XCUcH8SbNFh40GIkJ6i0fGDtQuYXTOboAVWaKAWt15ckJWOZ59g1ZsygW20rKUavemWs9aKgAxwnzjuFXPNvLvJxcD2BLW71gdeVAeWlWBOx2dxK9ElKx4sdjCn8t4pLiN8yl2korP184xgVA0w==;
	3:xqKCmSiqUQyTkP5XW0uCXE+O5QIlRyboK7nOT2Q5nnpcmX1HsoEZYc7xt/0+4bfiS7/PFunURSYNpt8vs7ao2XzcoNGYE80SYIoYk/4NpNoLljV+jq/PTA5BdPppSutz;
	25:qEsJwKQoE121AdRTgrW9IjOCuuI+bY1z+mp8AnS4wRSDjwj/Ifhwn2kRMly2NMzpkTmn9cw/7MEvMeAmvqnuxdxpG1rATtrfesSL28anuxcWlomEx0jCDG8Y2gGLgw3GSPjwoCpkte/vO+ZG9U23BhEGZHpmA0BpVowi0Vwt/O2p9FYJmehuCLkAWmOALN1QJtvy9emnd0CocMsULhVAv4koC4QJ58+jxR0VCM1Ln6N5tFrcA4jOr/ExO2b1Y+pVq2iqch3cuzIvuLwcrWOIoQ==
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY2PR04MB845;
X-Microsoft-Exchange-Diagnostics: 1; BY2PR04MB845;
	20:uT0daJBxEgsKWVCLyk2d7egsCb32HZzwux1l6y+Ca+spMIVw5C/pIC0mc4g5Jt2yIU9xtEclGMDrCVtWDYZRkLFp3GUyi6dKGmLUS0vEFN368xqoVpMTOWc2Aw0VbC0I9m+vkOMflI7O7IyQyAxswNy9vBxk8aDKdYxL461Vbxfk4P0l4+fb8kL96OCkYat6tS3zOW+IvoWU6+qSDRZvTa511pZ4HoCJsMxSJtTtvnvqhnUqPDJu8r0wZ//AcuVHbOoTmbFQiTduvJMn+xYVJvox+7EzBxgKSYB73Be/JxD85bfBnFCrUtXiNBDHD4VX1LX0U4whrW5IYCQhl9NDpaydUDKa0W/gfwc3TEwblUkGpIgO/F9OthvebOdKWZ/lgj5JRMdkP5vKPggkOcoM54eGUrpIiUwPYyCXPkrq5S+P4S/WWr7K8ZiXlRmx+wOzlNRUVXY77ekVdoxsWmm+0o6QuA3H6Fv2bzKFOLRPYHuCf0t5iNQtB+/YmLkCwRQ/ePfqLK+7oYVbamFUVRuVgtfUHfIdapndkJ1lK4TD9+CUNLdT50Fkvhfs5GjEa4CBlm1WNvAIMjkAsozg/1QSl3TUtyPDh0pTh1r3fTbLKUs=
X-Microsoft-Antispam-PRVS: <BY2PR04MB8458B9534E85B8F7E19605F86F40@BY2PR04MB845.namprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(520078)(10201501046)(3002001);
	SRVR:BY2PR04MB845; BCL:0; PCL:0; RULEID:; SRVR:BY2PR04MB845; 
X-Microsoft-Exchange-Diagnostics: 1; BY2PR04MB845;
	4:tyxxgyM/4JN+fDewWdXtv9k8Evo4JXA7qhpQdtN1sSFkeFAwSF7RXKCmMDdGYUg0cBMIHgBWMLGvXdce58lp7LRi9CF5crnKUV3ttCgD0pgDZtEK8WHnWb4HJjV+xZK3BHZfYF30BeDbGM3u7UjmPRozhHQBTbb2Qrn28flM7YsBcnjkbriuH9qCQ2qOCLnscZi4+n63rSTIZ0y/QjIenVl2A1zxnZNh0/FbYab2W9suy/AwY67JDxeXGEE/bmDC6MrvuADdEYukrhpZOoQ4vMPbF+z7NGgXufTW202a5qtOjUc4jhZv2QLChL6a2gzdRZmvmlJbEMUXsJsIvwg8fLyj4fXbedmRcAZQjdkU+dc/BR0S+H0qANzqK4x54+Ym
X-Forefront-PRVS: 0813C68E65
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6009001)(6049001)(377454003)(189002)(24454002)(199003)(479174004)(65806001)(65956001)(1096002)(33656002)(36756003)(59896002)(40100003)(97736004)(2950100001)(50466002)(87266999)(3846002)(230700001)(105586002)(64126003)(4001350100001)(5004730100002)(54356999)(189998001)(5001960100002)(65816999)(76176999)(92566002)(42186005)(2906002)(110136002)(6116002)(107886002)(586003)(83506001)(19580395003)(81156007)(66066001)(86362001)(5008740100001)(47776003)(77096005)(50986999)(450100001)(106356001)(101416001)(122386002)(87976001)(23746002)(80316001)(2351001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BY2PR04MB845; H:[10.2.33.36];
	FPR:; SPF:None; PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
Received-SPF: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; BY2PR04MB845;
	23:/44CMCk5Dtm521YHj27DiT7TNS3YoRBFkWQykX?=
	=?Windows-1252?Q?rDgY657+roOE7s0Zf5WAuHQo9cMDde8AAeIDhMJsS9zEQclxjIkKucZr?=
	=?Windows-1252?Q?9Zfic+K7HqLPwU1YG/S0RGsAwCeN+rVAhDw8DgkADM05cyMes3A+29vF?=
	=?Windows-1252?Q?cYVHiJ4BXFuF/I3SOTJ6CnMvZfjNT5BiNgOQ7UcT7OsVSWOWlh4Z5PQQ?=
	=?Windows-1252?Q?R0vNPfWyYVFqLteu/BqYLgBksWYXPaSwNo8QJJcI98STFpoaat3JSM9r?=
	=?Windows-1252?Q?UFTQBwdrrTaNXF3hcOlcNEQUbtKdOzyi01E5miMApNawK4PvCTPEzwvr?=
	=?Windows-1252?Q?9RI5TyZ/1lrYD5/Z0ARZwlS7P/6dOPDIn06rs0qT3fWKRJjuhjLdYmir?=
	=?Windows-1252?Q?QrXtee4paKXtzfwiF9GyF7SL2nwznFBOgcVv4alu0t6kPuNEPMu1bwrF?=
	=?Windows-1252?Q?FIq++l+rXhQch2rvXn51BWQZY0BoDlMECB3F55uxXjAaj53ApwmYNgUQ?=
	=?Windows-1252?Q?Air4/CRxDUH64uteYeG8fADTuSvLA8sN6scIm+pM5lYV8sn78hR1vm+z?=
	=?Windows-1252?Q?EX1Nq1QZ60UGNOnDEB+wmzf5u4bmSbRIPIsPJoxfYySqpt7g9XpdxGDn?=
	=?Windows-1252?Q?Rddpkk5cNdSip4eHIPORfDkWjaQfha1K5rOQugkFrTHJfxQH5POC/qGY?=
	=?Windows-1252?Q?Ucl+ah5t2ufKAzFzNhruVdv71GyiWbUGvxKtXziBMBWUnYb480JLB6L4?=
	=?Windows-1252?Q?mMBekNvJlafSbhwp6UKP4KInbobY9Hn2DwbTfNaM69HYafXj4cj9Xdlv?=
	=?Windows-1252?Q?fH3yXjrHOZJKBk0qtg9aq7+wXmp0KKcrMj+6PaGbVDOTpCldMeADZVQx?=
	=?Windows-1252?Q?8pfNILC6m4xJiXUNZfaHO7x8vnV6UkUMcLIMd+TZkilhbFCmRNZUnMzz?=
	=?Windows-1252?Q?coB3L9hdLJk6PlhUboV4DdJDnHE3sF/U6sKTMtGdCT17EpKHlrXKJlMN?=
	=?Windows-1252?Q?ks7AlJpmJvFAYwaAgwRGXjYnzR3pK0y1yv2/tvQnRFFLzPH5puib5m2S?=
	=?Windows-1252?Q?bzoT9v8dtUTIRy4ZqQhvOfCpEeVmrvsmMP52gBTwPC/CfcNa1e7BZXP2?=
	=?Windows-1252?Q?LmdlPMlM5fmtdkE1r9lBzIg/YOiksWs1dq4jtT+DDly7/D5yeXCuWI67?=
	=?Windows-1252?Q?EU2r5lFXLFGYsh9JKafEK6s9zBo5Uoq2/SvI66PcnAP2eCGS/j+qWHoB?=
	=?Windows-1252?Q?CsnrscbSX91Uncp9DdSkulUWCDQttNIo963ubQHpSOCE5VLVoYZIxS85?=
	=?Windows-1252?Q?wL4q6/mROyyWllyVI69J+Mbgo+w+iA9be5+YgcbJS6020l2zIdd7i4Og?=
	=?Windows-1252?Q?R7CO5DAXQTA6koGXfOnDQXORNL38GHza6Yi8fD9F6Irntw5KBdLT4+i2?=
	=?Windows-1252?Q?VZwEiTEX+Va5QQN66d?=
X-Microsoft-Exchange-Diagnostics: 1; BY2PR04MB845;
	5:d9aLn1aUZARjWlhIyVvqzUHU8B29OhPi+Io9BZdA2pCb/0c16aGwfZHF4tcBizDwbl34G4tVJXBBhxMdDmaHJRloTRt5P3brHhmTdb+oKVxr6CoID7tHgehe2sOQVJ0/ABqeE3TtrXwzc+7tVM/R3g==;
	24:dwi9hvzx8TGfXL7PizB3hlmqbo1spbPdHOQNLy+CHFIUW7glytHbRcAWcxPrcGvMiJOpsq9uDveoRVYth+vjNUwgbXJi0aF15R++ksdat7k=
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2016 21:21:39.1768 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR04MB845
Subject: Re: yocto package naming
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
X-List-Received-Date: Wed, 06 Jan 2016 21:54:24 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit



On 12/22/2015 03:40 AM, Simon Ruetzler wrote:
> Hello,
> I want to create different packages from one recipe.
> 
> This is working except for one package.
> I addes this package with
> PACKAGES += " ${PN}-demo"
> and I expected that it is named with the recipe name and demo. In this case
> rumo-cpp-demo-1.0-rc...
> But the name is libscom1-1.0-rc..
> 
> The demo package contains the files for a dynamic library: libscom.so,
> libscom.so.1 and libscom.so.1.5.0
> and this library name is automatically used for the package name.
> 
> For the other packages the name are as expected. All package are defined in the
> same way except that FILES_.. definition is different.
> This packages also have dynamic libs but only the libname.so.1 files and the
> libname.so as a link.
> 
> Why is the demo package created with the libscom name? How can I disable this?
> 
> Regards Simon

I believe setting DEBIAN_NOAUTONAME_${PN}-demo = "1" should do it.

-- 
Cheers,

Alejandro

