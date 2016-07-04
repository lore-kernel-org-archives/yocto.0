Return-Path: <marcelo.magallon@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96E68E00D5E; Mon,  4 Jul 2016 14:44:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.125 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 12759 seconds by postgrey-1.32 at yocto-www;
	Mon, 04 Jul 2016 14:43:56 PDT
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0125.outbound.protection.outlook.com [104.47.34.125])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E2F5E00D55
	for <yocto@yoctoproject.org>; Mon,  4 Jul 2016 14:43:56 -0700 (PDT)
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=marcelo.magallon@hpe.com; 
Received: from nyx.americas.hpqcorp.net (15.195.195.254) by
	AT5PR84MB0290.NAMPRD84.PROD.OUTLOOK.COM (10.162.138.24) with Microsoft
	SMTP Server (TLS) id 15.1.534.14; Mon, 4 Jul 2016 18:11:14 +0000
Date: Mon, 4 Jul 2016 12:10:35 -0600
From: "Marcelo E. Magallon" <marcelo.magallon@hpe.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20160704181034.GE7411@nyx.americas.hpqcorp.net>
References: <CY1PR0101MB1594413BBE9700E6A3EFC6E9D7250@CY1PR0101MB1594.prod.exchangelabs.com>
	<CAF3SDA4+AzfPjKDgxisVjdT_Guvujr6KLvXRVRZuTNZyOwTGpg@mail.gmail.com>
	<CAJTo0LbhtsE_bMdiVWrVkZWkHTero5Z+TDn0iuPzGivSH8239Q@mail.gmail.com>
	<CAF3SDA5CF1ihp3W6Lx1WpLpyiJ0v4ed14Aa1vTLWFyiHmdkZFw@mail.gmail.com>
	<CY1PR0101MB15943BB45183B750D36E8B60D7260@CY1PR0101MB1594.prod.exchangelabs.com>
	<CAJTo0LaQn3Yr0tp-eu92jSQ-UP=+qCopcKTXYOBcTa-4s7wnAQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LaQn3Yr0tp-eu92jSQ-UP=+qCopcKTXYOBcTa-4s7wnAQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Originating-IP: [15.195.195.254]
X-ClientProxiedBy: BY2PR21CA0006.namprd21.prod.outlook.com (10.162.74.144) To
	AT5PR84MB0290.NAMPRD84.PROD.OUTLOOK.COM (10.162.138.24)
X-MS-Office365-Filtering-Correlation-Id: 2aabeaf4-6004-4046-1a84-08d3a43696c9
X-Microsoft-Exchange-Diagnostics: 1; AT5PR84MB0290;
	2:+4b5gQc6JreIAL+rY4JvZHeVqoy7QH115hWTean7DD5h1rl00jZzFZ8TKiL7jtfX7zb/5FT6wRsXp3CoxWc9qWpFJWZKkd0cWrJqDr9gvcCmZSS5a5NUSE0gcBIlY/87HKLuksOf8Mp5jiokL26T4adXFKlFRVp94iAzEgOEcTZpO3PNcKN2hw8JwatEba7t;
	3:WJngdmZzrDiQPx0c7+EHSHqfdz8rnsEpHBWYq5mjYjxUjoh179L5suaUkJQ2OdEdMw90izdhrkBZAj6CbvGoIqjAibhdYZ2GZq4/MLMy4iWMeEYTZolUELPZygZ7uPsW
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:AT5PR84MB0290;
X-Microsoft-Exchange-Diagnostics: 1; AT5PR84MB0290;
	25:c5crr3X87lX+hWwnAWthVoJsttjjjWfIVOlmPsMtxLTdrBPcjJ7BF+POdDaJSrVigHoYKXcJCf+RbsC6etUp5Oie6eJjRXQWC1QCaxHXWLYkV4W2rOjcPeVNPeZfqSifGCF228rdElAnl8VWGKK8JWngmzU8CXhDAxoKYxg785pnH2DdjD8aGpQZ+ZWt3tgZtb5J8NHokfjL4+CHA7Evr+8I/AP07nU50rbHk1uEn/uKWKz1S/R5qWgUajgAOP+3UE40TfDeUTtiFKH8udhNOE9lSje4Adxor+5KbcqhJ+6AaU6JLTFD5YL09wiXTs+Lbb/Mskzb69b4R2O6RI9JAfRWyhW2Fh41C4cnipHMv1ScClLHll3pzEDgIX0eRRLvUcHzJA9dwzEMSVBIE7PAzzK5pGVNsTfRcZnOX34xa+cpBbipXRemTJkyMBIe4vmd3+Y4BMqzhvoza29QsN8NP42q/MWifL0nZ+cTiDDpq9BBRlGeiM8LkvxqPyrCghxnGR/jWwR3KfW+FTGubZoirdF5UPdZM3zEiTiEtw41YodoaN3sHYFnkmcx1o1c8CReTTzdecSLmnfXJHXThsHnFfJl0GpkYIMYAGkhgeb1phAmYbxnUeRY9BB/nP3wUZvBmPkGC3ZFns9YiOk2CAzxchNJdN06Lp7+BlqSYEgE3cVoKTWg8bxA4F6sKVL0EUH/;
	31:QkLNxVOtmYZdHdl2talgsHKsp/nSx6DPckOIOJJYbvyER78AKNkoq79V2h80TULBtD40Zl1x3CkS1Jp3N/pVg2ru2lCe/uqI7d1iFNyttQ9qiD+4ZUrHrh26sTD1E3CdizQ5mFAfW6kELc8tG6azyib5QtiFqIxx3HuOsPMli1GaK73W2Spdhjf+nFx3VZaPVUYZnyl5r9uoWs7QpiOD7A==
X-Microsoft-Exchange-Diagnostics: 1; AT5PR84MB0290;
	20:h/VahTTot/rNoCaQFwxoBvBrVPH5pAwmrNifSvlfKxaaskKLWbBA94PZtHfC9gPmkmDXQk2NU2nFhBofSoPIkB5zGjbJ0TOerFqHsPIVFTakVjyHoXVNP1sqaaDqUsgSA6e7N0cK3nJon06rokDNScvk1VG7A+PF4CnPK2yANgV4EOF0ecUg7ilJur8A7UQVP0TWhnW7mQUeBq6hsHcHpyxhGsxaIukyEA2uoQDDxxKgAyDM4l0Mm0Crurv2yNoLBq5kR6Bv2Gte7AwFkbX7LPmX17/qt549Hgz6Y0Mtk355iz6JCbUJyfaHcQ/+FzwCZ/trXYWPpXfugxwTuDDiGE7OPgIa0j0OanVjnPnx8avqkS31k4rnYptmkIUpnGC6Y8hjTTVEuhhqZb3CefBjjGnJYqT6J/5voCFFCmYfyKMI6Ae5vYpeyLXZ+DYnEg7KjtDG3DqoUd1tTuDJcq4XMY+Ao2wdXHSeMApRknn+htTO53LsfgyunFF/k9wIhPte;
	4:xJruWQNhtG65KxblKrvulv0Qw1C/ZfUu61jxQIDqXm+4CVHnKNRa4u38mh1fppH1UQE/bfbd4rtmJ2ku1DUoVhLRA8PnYSxVL5ohOB0HMSw5fD7aPHK9Qtez09IbnOYj3Gbw/1B32Y8xjEgMcANWtQw9wkQ8Zkm2nI6hRw4gvHzomn8/CLRcZ01v7Aot9Kt3jm9aGTKuDXXw98iKGmS274Rr6TfnKggkHFtIGaUEciCMH6adJAO6uZpxo4+5vNn3iAEh1hQNF+hc9DW4yVnO5O6fTvQ/nxyJgSo8YeIfH23nrkRCbZvPKgJ+UqhQI5tyFyMvEjaN6Lzq7FDAE29zjX6tWu2YLqH6nWbkfYXU2UDNUc9U1c42ak7nHVA9++JK
X-Microsoft-Antispam-PRVS: <AT5PR84MB029036C41F47837EE22CAE5796380@AT5PR84MB0290.NAMPRD84.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001);
	SRVR:AT5PR84MB0290; BCL:0; PCL:0; RULEID:; SRVR:AT5PR84MB0290; 
X-Forefront-PRVS: 0993689CD1
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6009001)(7916002)(189002)(24454002)(199003)(50466002)(86362001)(4001350100001)(189998001)(97736004)(4326007)(110136002)(2906002)(2950100001)(1076002)(46406003)(93886004)(6116002)(92566002)(23726003)(33656002)(3846002)(586003)(77096005)(97756001)(54356999)(76176999)(50986999)(106356001)(66066001)(68736007)(105586002)(8676002)(19580405001)(19580395003)(81156014)(81166006)(7846002)(7736002)(305945005)(8666005)(42186005)(9686002)(47776003)(83506001)(101416001)(18370500001)(7059030);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AT5PR84MB0290;
	H:nyx.americas.hpqcorp.net; FPR:; SPF:None; PTR:InfoNoRecords;
	MX:1; A:1; LANG:en; 
Received-SPF: None (protection.outlook.com: hpe.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; AT5PR84MB0290;
	23:7flLnNuoKDxlWcw6HbdmwPjyXVoBbc073ZpO3RCur?=
	=?us-ascii?Q?PCFKsICLcmtVi9LEGL21/jDaXWVQK/BrobDiqlRh9DAomiFeNzhDtDd7ByZk?=
	=?us-ascii?Q?X85v+emVVEnznUzDkILACQtzf9bazX2HS6k1o9It0ajb3QT7VOvRQkR+r9Le?=
	=?us-ascii?Q?/BIBUtbPQ+BOguhT2FJceHOWaUnVu/7YLCOvOxfQmLOcJfEx3/XqnCHCtONj?=
	=?us-ascii?Q?GoXGYvwp/z6sJjjMO/Me3kYz92+u6cKhCThbyi4rRNF4s93hSnSdlDgTEiyN?=
	=?us-ascii?Q?HgZc1En1DcYnrzrsC5yvaCc+FijzNBvs9ytJHN1nC3MGDVWxQS1Bpcm9FWYA?=
	=?us-ascii?Q?2Z1vnWOFJKDLhtXfOGM8bBl4BQ0mutCLkZptH9aalXr9DLzVOGs/HukNWa43?=
	=?us-ascii?Q?/hGhUWtGGJtgEoagS3eHBpxn7em/nfIx7hqDusD/3HlZGmowzEN3fZKPdOC1?=
	=?us-ascii?Q?zUIfH51s7SwTyt/yjaOxsaCpT+feeTCCrLcCnzGhckZx8+AG4+guMougsWC/?=
	=?us-ascii?Q?gsHBCDnVDbHGfZC940e4ALkoEv923dRwaT2OpEXc7daana1qYDTMZz/edxrD?=
	=?us-ascii?Q?iujzrMGW4xeaO9pI0CotPUGBZphkWmgAph+twfuXL0De8/wcdmCN7ittTRM3?=
	=?us-ascii?Q?jExF+673V0uRMOqbStLhXl5+BPs0ZaErVsnGAaUcNF6qlGRJZg0qNGltBnSE?=
	=?us-ascii?Q?jdGIUoXCF8A0Yg5wPE7mBwSArjkHXKiXGvWs013TJlhGMD5Mkw9VkxZliNvQ?=
	=?us-ascii?Q?g9oBTGZMpi2niaUeWWLpV4q5CSH/4hkPsugd6IZ6OWBJH2vFw9r1vhjSZeDU?=
	=?us-ascii?Q?Ok6HXBhv/8jGg4lttkOFgt9gLazMz/Y5NWbmvQziGY/zLKJrENKNQ3xNeFeZ?=
	=?us-ascii?Q?DsU1jOjAUF5haNoVbstHFGHieqmwj+utNJwo4eTWgdw0GURk6D67ORVTTq/Z?=
	=?us-ascii?Q?Qbxi2mKVJQ8uHmElsmNlUJyeuvkv04amZHtRxG6Km0ujEArE8/zy9xhf1V0O?=
	=?us-ascii?Q?IsF1rju8Yqrfrl1Xep2HnAttXrT76b56R4LgMTtpj0posgbmm/w7MpbFCepn?=
	=?us-ascii?Q?o9mdMFI2qaYJ3VhF/616boaMIL3LtepHXI5Qjs4hav43fO73l9AcD3NkqZoo?=
	=?us-ascii?Q?K+UNZH4fNjhWuw4satKG8TMOdDbggu1Pylnw+pwLzR1H0DRaEC17IjypcZfI?=
	=?us-ascii?Q?6blmidgwQypbIY059tKUUVdJvEq/CRmzhNk?=
X-Microsoft-Exchange-Diagnostics: 1; AT5PR84MB0290;
	6:8wwb80kyxvLkRDpDzgkMyO8gNf5igR6UeRJqKgjgO8eZjc1Ztb9uXPfZlAPU1t8cCk0hTlpHwZDvJhSFmlf69cBu7Y1lfXoTsS2pUpwQu2AjtauXJOMs5K4hUSiQgOdWfwGTYSxP8XbDBF2ahKsqsMk7ov7jicy45+90FpCpnmdE56mpYNisNu+FV6VAuom8F4ls1A9fZX6thos2czOIYvgPLeHqHrP3GNqSwSyN7FRRmbrdVFs2zOx6zqdFdQINXpyfO8CpgC8/0NmFlutDEbfOWy9wHdr1tcTyxJqti5A=;
	5:rY0tUPMIU/mKhsIsAiGgnX6PeJ0d5mhav5KEpgF2WS78yyVhJG+E3hCndsNKkaeahsYa/VLWmQIeBJZjJ7nLQ5GKkdPTPZsm9ZIPpYbcZs3mCYfM8K59KAPcE5iWJhFNfrqlin4pZOmDdYpAmtq9Pw==;
	24:htEV38MC9jJOBzb3hrN74nHeCsLpk2AYeJ+8iWTPXmaCpJV1MhHQetTVJhDYFSmH1oY2lHWuSpRnzTr0VmcNTOY/ARTimlZ10Qr4eKRXeLM=;
	7:YXU+F6QYypg4AeEpVIt22E1JTvKrEVngu7L9hfyZh6LVp2cAzvnkF6NxB/CRGxsAK515cJBHcymxJnMBBVsmMwM7Uajx6pu7Ppq5NaD+TPK1im+IcpvNqKJT5sMPNMB/IZ+7GZZAADRm+zvaqPjOKXJESSWk1llnpoXbzey6aTBdcEY/9dt8XlsJxyAiWqGqm1GJvdjTXAr8Cr5qH/24WXEFE1DPPNrR5+BN8CBoVJ/1G44X/9yUJfwBVnmzNjR1
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: hpe.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2016 18:11:14.3724 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AT5PR84MB0290
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Takashi Matsuzawa <tmatsuzawa@uievolution.com>
Subject: Re: Shorter build time?
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
X-List-Received-Date: Mon, 04 Jul 2016 21:44:00 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

On Sat, Jul 02, 2016 at 09:02:32AM +0100, Burton, Ross wrote:
> On 2 July 2016 at 03:12, Takashi Matsuzawa <tmatsuzawa@uievolution.com>
> wrote:
> 
> > There seems to be PyPy, Stackless Python, etc. but I am not sure
> > they can be tried 'in-place' to see if they work faster.
> >
> In the context of a bitbake build, the overhead of Python itself is
> utterly insignificant in the context of doing the
> configure/compile/package.

That is true, but I've seen cases where the start up time of Python (or
the time it takes bitbake to start "doing work") is *perceptually* much
larger than the work done by the recipe, or at least it looks like it
represents a sigficant fraction of the total work. That's where PyPy
might help.

Marcelo

