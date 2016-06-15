Return-Path: <bartosz.woronicz@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C76D5E00CC7; Wed, 15 Jun 2016 08:10:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.132 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0132.outbound.protection.outlook.com [157.56.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EFD2E00CBB
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 08:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.onmicrosoft.com; 
	s=selector1-nokia-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Upa9wHk/okvTTaUyTcIq9UlVYu4dWXkPm0h+P5FHkAc=;
	b=rKDQfXmX3HlBE81kiHZzW7/iQU8zl1p9WFs0OXJYyEzW9ZgZFrXL68qcQHgojuZVXK/jAUTo88JeuQvx61NYIuJp+LsbpcqY/HLDTiLAN97hfF+VExIjUBsVW2YF/DzLuh94fNPUPYbx8KUDmI82i2CkAyS57KPF5s1X+LYR4MI=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=bartosz.woronicz@nokia.com; 
Received: from [10.154.187.104] (131.228.2.8) by
	DB5PR07MB1046.eurprd07.prod.outlook.com (10.161.197.140) with Microsoft
	SMTP Server (TLS) id 15.1.517.8; Wed, 15 Jun 2016 15:09:56 +0000
To: Pascal Bach <pascal.bach@siemens.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <57613330.9080100@siemens.com>
	<VI1PR07MB1053319307849C7A12BE1E9581550@VI1PR07MB1053.eurprd07.prod.outlook.com>
	<57613D1C.5060001@siemens.com>
From: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Message-ID: <57616FC0.8020209@nokia.com>
Date: Wed, 15 Jun 2016 17:09:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <57613D1C.5060001@siemens.com>
X-Originating-IP: [131.228.2.8]
X-ClientProxiedBy: AM2PR09CA0048.eurprd09.prod.outlook.com (10.160.228.144) To
	DB5PR07MB1046.eurprd07.prod.outlook.com (10.161.197.140)
X-MS-Office365-Filtering-Correlation-Id: c636d980-bc4c-45f1-51a2-08d3952f1d20
X-Microsoft-Exchange-Diagnostics: 1; DB5PR07MB1046;
	2:0m+hqqNEJZNySYENfDBl00Nr5tRlW100K99p5+sIYewzvWK5ThXPhfHIcnVjufI1jwe5OyVOT5/hnd8J7LDHItGiu0pCy4ETDYC1ixtXlGElXOU2T1wo+C/RN6FVwp/z5eVH7ZpB9d90zyM7TbLm3WhOflQf90jblOdqXgsKfHLWPJmuJYJHI5P+w5Nq1vDn;
	3:ZiihJdGceluUywnfpu4SFHl45pzvmo81CLRPwy3ImPVEmUlITdue5Z3WVQij2y+OhT9+V5GDEv6RLZ0pPaU1VffA+4KxOdi514JZks0TrbmPM3LaX35jb/ubDPsWI8fL
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB5PR07MB1046;
X-Microsoft-Exchange-Diagnostics: 1; DB5PR07MB1046;
	25:4oikrAsi2igw6TaejQMsFoPjaDkwrIGywI+p374Jm+5+XSYNrO0S+STsgY6ccrI/sdJ5Vj/aVGjbWfujpN+Mt+QhtEjMSNi71UuNCOKTJzi7o7mmBPnamgviEuetLJ+lhLDTL2IdRtqq5M3/5elAv1ae9VyW0RPm1JH7nnXl+qmRWhtVANXkTBrjrUtQm+FEK3ku4YvkNF52Gl58Il4ZKrkOQcbiilBvbulCoSbW02LpeWep6/271TL2lQNXI+wnRul0AnJIkfzVADF8qeSid1I90377gewkZV4xvCBg1lLdfhSmR7YQP7NxU+k02kMjVOh2BMJuYLfGaZUNGxMjtrCTGzbf1PQEv6cXC3ch0pypHoNSThe9SE+RttZWU6Sp/rwYZQjn7AsXRuHhDrdR8X9R6K7z7IbH/VSioyPgbtp9ast1QyICbt2l8R685dcMc61DRawPLhc/ScBb9BV3rn+Ni+S3dULJoKzUOtcX86+kmPoCQdfpZ4O+cHSJoxfS//eimTpE9ug9gWvaOPEJ/tQDdPZLm7HRCzkQM5TFJpuZJ+P8cOXgSNyOoOLLCF37lGiZlQdPIUa6veMue88UbmD8Ow57QzHtrfSTda01Ta5+MLy6RuKwoCEnfYroPG5CRHEfRg5ENXuQtUP58XHY9e6RXZAlDHLsjr4HxHNM7MDkkZ73Dy0urp8MCjKYbvaONsn5mPcrWcYaUaUz3qZNkOQRzhiyC2CNItgDhLELBauSUgM3oT2GWlGKk0kzsWRKymdUsu+fOE6ck9o+TrbH1cL/W137iA+GXbIX2GVeVElRYGb99PWM2JilcMnINy0z
X-Microsoft-Exchange-Diagnostics: 1; DB5PR07MB1046;
	20:Lj2vnVedTaQYPW5bQnZb8AciRFBQVpco2ViNwQ10N/fjRb491YYT7cgDTA/3bVV1dCaO5i7dc5YG+GqtTamSUms9nlkKHL8snVVN1i5ASHQZWUECYEWYDSQ4poTrj7IT6ksOhbtHhElvAUig5zbgXQ3BHgX9hU/NBqw1GbopVYK+BNPqR7C9WPEdtKCNhUezhDsai8Ba3wjAFxdAQZzr8oaOUQSA6zS+GZqR4r309ZF6mNI6PBFgdiklW0E+fbg4gVJX6zkebRRkFKHevqhA/17gfCHtD0xOOxIc17gfiA5GrOSZ0bSaIP4dTqmAXrluX2amGNJvJVWyx9jZ9L3NdbfbBKMtq2VILN1dSaj/aRAbDlJ1BqZv7gq24MrICmK3RiSkc2anZmnUSMmdML+5Vkw0vLwHAHXuv31LRY0twtKca+PUq+r3XZpuS07tRUcX9sxA/Luy12s28fuapgSbBwPUkhTTJC8QPD6h97COArkouzXIgjxr97Q3wutC1ltl;
	4:eNDTER/H56akRpXEu5Eb1m4vZOmuoaWOvFM/r0cqbuXll4ENJ1ANvNN3h8cnZptr3RwE8xBeYQfJeJGHdKQf3hqUoGQWZDp9dEJpEDNvp6CK7z7Wn140Loywqrl/lDOcYQQsRyvx4mmIAw4C3M0R9skuOMNhbv9H3ZfWMj8ZMQyLPTL8omD0891Va6cZfzQVHzcF/SclemfojNmEL9I6na1cJ9n2zTNgkt6FxWU1arHvXQba/ArK5+0xkrIIB/a+/EGEHiPvUKaMBc9yT1JIVle47tkjGcEwspOwo4xMuesoOwt+UeqAGabN+QOy0LA2HMdOkCFOGqVnu+zm2lAfDk6G5qqHbPKhzYUFDncokdZgq2JT5teUaICKMeWo65mvVvC36EjBn0gIJlxjO+BYNPNetdhl2J9dcepWbGWlc4Q=
X-Microsoft-Antispam-PRVS: <DB5PR07MB104696E9B738E2D34875130F81550@DB5PR07MB1046.eurprd07.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(158342451672863);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:DB5PR07MB1046; BCL:0; PCL:0; RULEID:; SRVR:DB5PR07MB1046; 
X-Forefront-PRVS: 09749A275C
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6049001)(6009001)(7916002)(189002)(199003)(13464003)(40764003)(71364002)(24454002)(377454003)(2950100001)(189998001)(33656002)(5004730100002)(15975445007)(36756003)(77096005)(64126003)(19580405001)(65816999)(23746002)(19580395003)(54356999)(76176999)(87266999)(230700001)(97736004)(99136001)(50986999)(80316001)(68736007)(107886002)(8676002)(65956001)(81156014)(5001770100001)(4001350100001)(101416001)(92566002)(5008740100001)(81166006)(65806001)(50466002)(105586002)(2906002)(59896002)(47776003)(66066001)(42186005)(86362001)(2501003)(83506001)(106356001)(586003)(3846002)(6116002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB5PR07MB1046; H:[10.154.187.104];
	FPR:; SPF:None; PTR:InfoNoRecords; MX:1; A:1; CAT:NONE; LANG:en;
	CAT:NONE; 
Received-SPF: None (protection.outlook.com: nokia.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; DB5PR07MB1046;
	23:Q7sJDUbnQRSx7oPqEfMKOM4sJ9muczVX5UvVE?=
	=?Windows-1252?Q?9cmXKSz1xrABPtdF3d7VEF4WrXZ0MuTbF4pJMV04E3CKyrU8mK8+XuIE?=
	=?Windows-1252?Q?9w8ES02cY04Y6M1S9TyByXZKuI9tOJfC4mQFyXs62xDBYgrB78/M/2RT?=
	=?Windows-1252?Q?jW2OYmwEsgGgVXa7NqvUd0Juh4GFOu3jFpimCNvGs4uYLDwWiRTQ595A?=
	=?Windows-1252?Q?KjgCpdK2bEABd2zKFZj7R0mC60mxsZLmZhLv8+SIEgCrreu5Y3aIctZN?=
	=?Windows-1252?Q?sDi784OhaKUxDG68jruOfnZmqTWxVHiOjEGpE5U/B3yIGMErxamtDCr4?=
	=?Windows-1252?Q?UElxwE3ywQA0tR2TtOb1oKA+M0dMzoVuZOuij0LG7nuReqJmz41HdFyu?=
	=?Windows-1252?Q?N1+rPbBjcatIZHmmVfd3VAHSNtRB7vuolbz9gFmI6oSdKTjEh6b2NDxc?=
	=?Windows-1252?Q?rz4Gv7ga00pQIe+cKlynS58oqfcAsqE0xLGB4Aq+cYwp7gnFzm+YiVgO?=
	=?Windows-1252?Q?UekZyLokzwmgB55QR6qRpiQdIt3nj6tctSicYS2Dhq6U4sNNZrYT+Shs?=
	=?Windows-1252?Q?GYZrXuIExlqiETHj512YGCHhEu29UgItGxlib7aB9rpwkg3zqC6CxaBI?=
	=?Windows-1252?Q?bwbEbXcFV9FJCy2JUQJ+QpZ4pwKPL85Fen5fi84uSIFwRfn7bTTgKa8T?=
	=?Windows-1252?Q?5yfvM1sYyr+97gkipyaMbhQXxUH4FkUZjjXZzs0NxQnmpJgHW9DzG/UL?=
	=?Windows-1252?Q?l78KhjGbJSk8OoIjKFGKsbBjojVq32Bkum4+OFnD0Y44tc+U8pvdrdaE?=
	=?Windows-1252?Q?bcpRqqGfCOx5itpk5fGfec/gtW4RmMhh8nuCfaPx4OQx1NNmhS9mSQWz?=
	=?Windows-1252?Q?STJd56b49qETPVrf2hH12WIGofi3xv9+oDxVskxjk2dQMikLkTDGgkXx?=
	=?Windows-1252?Q?MStsy4B+XGQtZNHURqLsuSXw/wDAkf4vttVMI/2UGr77Xzo32i3p0+Iw?=
	=?Windows-1252?Q?GVA7CIizF9omeJypOUpxEUvLkrjwy4xAFz4zq+s5sDTUfHemyCrtS+2s?=
	=?Windows-1252?Q?kGYF8CPqxCNXiQG9QbxeucDvGFPNtseq1Z3vSE2QkEwWlvieW2PKWnlB?=
	=?Windows-1252?Q?v9zy4//7hav6dBFhDdi9UD5H6RGtf28ZK8D8WAF9EUcXXRVyWDR5r61g?=
	=?Windows-1252?Q?Mcl2wrebngR6qsIVvz8FdyriJEzML9Uh0yM2RpI8kmK0z57JjRVX5H9Y?=
	=?Windows-1252?Q?SvM95bnLum9VwHtOShdZmSvzDp9+ISeElbDClB6m9N3eQzCXt659hmEI?=
	=?Windows-1252?Q?FL8280gbO7gpr2usxg5l+rllhbELl7BJwLjLt0WQRdW50XJBLVZ/aZsL?=
	=?Windows-1252?Q?pDlf5jpYHNF6mr/VbNL/iGHkRHL3sbcuq5FuPWxEQUoN2ZoLkriF0pJW?=
	=?Windows-1252?Q?T+FxQ1kfVbIrJSSVBcbjfhTHzLyyHD8vTpRvUrXfbswuk3untJRaCeFM?=
	=?Windows-1252?Q?4tGsRkQ1aKV6FtUpYdvv73lwMPqWuMy2YRcUbkBIGflzv8HkQ92ZsCC4?=
	=?Windows-1252?Q?eev0LeyIEH2Lw0=3D?=
X-Microsoft-Exchange-Diagnostics: 1; DB5PR07MB1046;
	6:lsYa9H1y64RI9GlWnpdLwXS/8lYpWbD8XNGb3Q+w3n8O180q+4Phy+O0glvROcrqgpf09k7DCOq2K+WnZM4n8YmWPpJ0vSSTz3mI7+CbO3C8YWsSKm1mkGOPOAqMxxRqyGwbp0DVUEPzQVBW1pz7HFnVYK4YSG7/JDyRhvLuY6kvyd0IMG9b08brqI83hBTZxTbnuz0hPtne94UOL/h63hrwUx3oKoAPAhv/gZMXpPCW7X/d+9+Neb3LVZDPA1ZygFuUEPq/s6lNVa4XMcODTA==;
	5:BhIFX//niPGYX7/d+u3Qxz9GOUeMAEk+bpvgHV4thG0ckKsrQiefDpi8Y4/JCVtHt0/hrgNmSBFggIGl4lmZmHGxtpdPLFwHb8xW2GdUVEJZZzsaQEf+nV7DWXeHF8FeFwDcbKc/YK4G1dSEojmkwg==;
	24:02pXH5qCBOWGPl8CzsolW5ylbrd5KsClwi9e+EeF+M6DwDwRRwpWWnNBKQ1r0zsIIY8p/mWFcyY+McNUirPT8TWpvhAHUlxhy6th4bL3vCY=;
	7:fyJM1ZDuAFx4MguCQPd5KzWYLepMNsPcDokpkmkFdtNRLLoKu4IYCtR2+vnGXL0Qgw1juEuQZzEowJTZPfQfXPhBzyGvOmHda/jqLX8n1ao4OTmI4sDIooeI8zeIenlRZzlwsR2ahEprX7PgGC0iZzZ6stpTLoKoXhO0gbswW0z1gWTpPAiqRwiJxRktFQn7rSAuKcNcRgfpdVx35bIYWA==
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2016 15:09:56.9967 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR07MB1046
Subject: Re: Yocto git server via http and mirror tarballs
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
X-List-Received-Date: Wed, 15 Jun 2016 15:10:01 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Maybe try to prepend PREMIRRORS , then possibly everytime it will use 
HTTP/HTTPS protocol instead git (because it will be the very first match).

http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-PREMIRRORS

Kind regards,
Bartosz Woronicz
Engineer, Software Configuration (SCM)
Nokia Networks - PL/Wroclaw

On 15.06.2016 13:33, Pascal Bach wrote:
>> I set in .gitconfig to always use https:// (don't forget 'git' at the end of path) instead git:// for yoctoproject url
>>
>> [url "https://git.yoctoproject.org/git/"]
>>          insteadOf = git://git.yoctoproject.org/
> I would pefer a solution that can be handled at the distro/site.conf level so that not very developer has to change their .gitconfig.
> However this is a good work around, thanks.
>
>> Kind regards,
>> Bartosz Woronicz
>> Engineer, Software Configuration (SCM)
>> Nokia Networks - PL/Wroclaw
>>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Pascal Bach
>> Sent: Wednesday, June 15, 2016 12:51 PM
>> To: yocto@yoctoproject.org
>> Subject: [yocto] Yocto git server via http and mirror tarballs
>>
>> Hi
>>
>> Because of firewall restrictions I'm not always not able to access the git.yoctoproject.org via the git protocol but I'm required to use http.
>>
>> By default most of the recipes in Poky recipes use the git protocol not the http protocol. For example yocto-kernel-tools points to repositories "git://git.yoctoproject.org/yocto-kernel-tools" instead of "http://git.yoctoproject.org/git/yocto-kernel-tools".
>>
>> To work around this issue I added a mirror rules for rewriting the protocol like this:
>>
>> MIRRORS += "\
>>      git://git.yoctoproject.org/.*                               git://git.yoctoproject.org/git/PATH;protocol=http \n \
>>      "
>>
>> This seems to work and I'm able to fetch the sources even when git access is not possible.
>>
>> But when I then enable BB_GENERATE_MIRROR_TARBALLS = "1" I'm starting to get different tarball names depending on what protocol was used.
>> For example "git2_git.yoctoproject.org.yocto-kernel-tools.git.tar.gz" vs "git2_git.yoctoproject.org.git.yocto-kernel-tools.git.tar.gz".
>>
>> I assume this happens because the first tarball was create while git access was possible, while the second one was created when only http was possible:
>> git.yoctoproject.org/git => git.yoctoproject.org.git
>> git.yoctoproject.org     => git.yoctoproject.org
>>
>> Is there any way to prevent the tarballs from having different names? For example derive the name always from the original URL not the mirror one?
>>
>> Or is there a better way to achieve what we are doing with MIRROR?
>>
>> Thanks for your help.
>>
>> Pascal


