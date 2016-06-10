Return-Path: <bartosz.woronicz@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C809E00DF0; Fri, 10 Jun 2016 12:00:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, MISSING_HEADERS, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.131 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 8274 seconds by postgrey-1.32 at yocto-www;
	Fri, 10 Jun 2016 12:00:44 PDT
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0131.outbound.protection.outlook.com [157.56.112.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA79AE00DED
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2016 12:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.onmicrosoft.com; 
	s=selector1-nokia-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=iNWXl+jlXzDM7BAGS/d9YBD6Tft6jDj5Y7yLzv/BYbQ=;
	b=YPnRwMpk3aYWoJRKu+CdwNCiAcpeIpuosT6RkTAfBLtW1+h/oImTWZQWb5IPI1uNsQku2V++Lqdbeywib/0L8aVWc94HJZ1kg60p9nkVhUtF+Wht7BBykgjjpymzSvdMVPsAu1ugMxT/6INVtCHlTlsx0B3cw5RjlxLj/r9KMzk=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=bartosz.woronicz@nokia.com; 
Received: from [10.154.187.104] (131.228.32.168) by
	AM2PR07MB1042.eurprd07.prod.outlook.com (10.162.37.27) with Microsoft
	SMTP Server (TLS) id 15.1.506.9; Fri, 10 Jun 2016 16:28:32 +0000
References: <5756E529.3000500@nokia.com>
	<CAJTo0LYx16CNV_bvxC_Oe6738YfqvMwK38vC47jnK-HMHUmAyg@mail.gmail.com>
CC: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Message-ID: <575AEAAC.9020701@nokia.com>
Date: Fri, 10 Jun 2016 18:28:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYx16CNV_bvxC_Oe6738YfqvMwK38vC47jnK-HMHUmAyg@mail.gmail.com>
X-Originating-IP: [131.228.32.168]
X-ClientProxiedBy: AM5PR0501CA0002.eurprd05.prod.outlook.com (10.164.187.12)
	To AM2PR07MB1042.eurprd07.prod.outlook.com (10.162.37.27)
X-MS-Office365-Filtering-Correlation-Id: f4c20d8f-1447-4471-3fd2-08d3914c43d9
X-Microsoft-Exchange-Diagnostics: 1; AM2PR07MB1042;
	2:Izgz6rjsjU9c3AcgMdIoY2UQ/Pro42JZLOefuT0XhMWEVA+RUlO6oO9rMo+3dEx2ogUaOuChOfQAI2GTOn8+h7vun7vhs6wtYB5ri2vFw8pH6OZJfq8Xa4HbFakviLq5BLQ7JLaOT7DmJLJXAb52uXK+n6MHdj/t+Xwvd8N05R6c1Z/D5kBYCxeut/Mjz5RY;
	3:xD8tP4rO2Jn5QR+Dz2rtYPAPaLfrg/CIHp/l8YR3uq27x+KBsgV3oELabHj/t8jpBmB9OMMZEbNNQIjFHufF7iOSPahCp9WQe6kwqLg7V/XERj8OYTwSiUCF2H/qgwQ9
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:AM2PR07MB1042;
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; AM2PR07MB1042;
	25:CEe6rCjkMl88AC4/i7UTqJ2s/O91F+GFzePMEX1ga?=
	=?us-ascii?Q?s/go6O8m63jrP40vgyWs9XMM2k+3SKJEmu7WSsN89hwgQ8ZtEtRtSWbzZnTc?=
	=?us-ascii?Q?hGGHLU2kw/Q1oXn0vF5gp49Fv3TyB0oeGfBHKJlhn0Vp8vliNXnBQFLPxior?=
	=?us-ascii?Q?N/Hnaqa+6iNCHYvqKq1QsB0f/ezJoq4CX2Ccusk3BzE8jKUPB7+jDXkKWlY7?=
	=?us-ascii?Q?PZYdhciHZBINkZ5aXpyqIRQXVmrKfsvKpbPbbSw/mehDe/HuZ9SrR/hMjwnS?=
	=?us-ascii?Q?DnAEwE4wiI35jTNcp+PJJYc9AwZFvPEDD7pxHWEDSEF4n0xiJEPGsWHHnTfY?=
	=?us-ascii?Q?H3orhTHW3LzyKWg+P9wceax/GwnwqY/2WH/UQKhv5J/+b64YF+UYBN7hz4aO?=
	=?us-ascii?Q?+H1qUC3Jn2/syG/6XPkXkyUebd6/Zh0+cRURnE7tqnBWnSqBAZbNR+HYvZhN?=
	=?us-ascii?Q?AsdRm01KDtvBPER2kMLWpe4uHzjJur7UlW74Os+zH6e9zTOwvmlQ0Ayy+qkC?=
	=?us-ascii?Q?rJEC3MOKc+dCugsQO/FPK+Y0ONsmnoKv4hJZEqFe1uuo2aeoSxPq1kgbbOp4?=
	=?us-ascii?Q?+3M9XaeRotK3+3D5i18OdaCU0YiDzt1W7WBQIMfkAjbAkGVx0/IZZ5BUub8r?=
	=?us-ascii?Q?cNSrnXESGwDo/2Ys1fq+nXthaNe1WoOZ/gdxfMXykHS484pmDSuKgYx/DFmA?=
	=?us-ascii?Q?q6HQyRvNj/fJT2yKq862jqL0L8N83/8Qg06eWVXPewksHBkS99iLQKth9nZA?=
	=?us-ascii?Q?H+M1JfujaMZgaYjimrc+PLlWCv4osCWogv7KI/ynf8NwVBuzoiE83b9PEuq1?=
	=?us-ascii?Q?x9JAv1RMsGnWMCYDdHo0+BYN0w8vDjn0M4BN1NJ2q9ClZF8SADC7GDkSme9o?=
	=?us-ascii?Q?tBYB/PYXd9OqATolbxx2RoE445Oam64wNP87uNRFuz6HHu29Bu/d18Htgq9C?=
	=?us-ascii?Q?ripLKBQ7BNS+YzEjZ/EbmpaIVd13tdi3p9ZBvu8IWYA9N+4Y7Ui1np5cQkb0?=
	=?us-ascii?Q?s0=3D?=
X-Microsoft-Exchange-Diagnostics: 1; AM2PR07MB1042;
	20:Ul4hWhK6CDA18XKN7ZnkDln63h767fDr2u+DxSExfY6QHemsVusvxRC74QARrlvE9HeOEnZYmwGTWZAPR0mUhfvz8FCac8SMOE/6cDRJL5UJnfzisvL+FnV2HKEsPk87HkduWgYS64DRLsVq+se1PZ/VqpM4X+jACUN5WXCh0BGlHC6yYf+ro6DfiWx2pnF9kDsXxXq6VOOLVYgnMdJFgYgjF7Y+l6IvXPXTODIh58btC1ctND8XieKGATQh0CUIh6GBNHqnZQYmS816vtBEYlRqRNw79kttfXhmCyJjc900tWsyZAkhHfW+iVu87fXw5A3ZIFGIQlkGJOgomf1urQB1XN1Q6RaYLCnXgTPBgReed2WYQuXYmnHxyZ1EKuvLeilplBvBwamSSGLFEGbj/3xHCtEWDwsM+u16PgtYyPEcWpH1fpkj7BfhahVCpFAWRBZc8V9nHfwEhjvANHNaWUdZEefs2D0ZNFemXVc/GqhlNTruLefdkGcgFhO3JuQN;
	4:7aPfzrxs2Q9S/8zrtv/cSVQw8jcahPAlMEw1XZS2Y7lJU7JAQtbm+ymCGfZ7GFbdnMGFOCm/xFylCx1lM0Dks2jfkqyQ1Z2w6NYXiniMM5JMbEHrg0akx5VWeJEcZ59hKG9jl4McdQSn3soRS8qMav7zigww9Kfdff+PSkmTEBPUbZN7Ydq27FYpaCqQDKZOsAXQb/njNDmkISZE7IfEORrxEkNmk2MIL2saYUs+8auJeL/jKk+WAg1XN7SqwvPaRacUXyjrgNK7kZY4oBlSFjpnKMWoItZMPF/vRn3O2oyp0jyJ5jItRnAjWkIMabAIpzHLRQcSFToOCR35JNukWHryfMczU+fv+YHLjUdjkkjhLUoY5oa4L9iYU1+0+IkQVN3AUpCHKl8X4WfAaEq5CR7URKVNiXiVnmz2GCR/m4U=
X-Microsoft-Antispam-PRVS: <AM2PR07MB10429CD20285E9A3639DC1B381500@AM2PR07MB1042.eurprd07.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(82608151540597);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046);
	SRVR:AM2PR07MB1042; BCL:0; PCL:0; RULEID:; SRVR:AM2PR07MB1042; 
X-Forefront-PRVS: 096943F07A
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6049001)(7916002)(199003)(189002)(71364002)(24454002)(16236675004)(36756003)(2950100001)(68736007)(4001350100001)(450100001)(512874002)(76176999)(5004730100002)(97736004)(59896002)(50986999)(54356999)(101416001)(65816999)(87266999)(64126003)(65806001)(189998001)(15975445007)(4001450100002)(42186005)(77096005)(1671002)(33656002)(5008740100001)(86362001)(92566002)(6116002)(81156014)(81166006)(59246006)(3846002)(109986004)(19617315012)(19580405001)(19580395003)(80316001)(586003)(4326007)(8676002)(2906002)(106356001)(83506001)(84326002)(105586002)(66066001)(110136002)(270700001)(65956001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM2PR07MB1042; H:[10.154.187.104];
	FPR:; SPF:None; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
Received-SPF: None (protection.outlook.com: nokia.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; AM2PR07MB1042;
	23:txEzvM1tpa2kzQ9Pa63CSBROaU0kzfJlS2hyYHuFJ?=
	=?us-ascii?Q?4U5o9qvRBGxAQlCiCZilZYpTUc31ke75F+98wy2L1xOPbOBccBMED75ezx4/?=
	=?us-ascii?Q?9Q2xLBuhJuJwr1i5FZusMiYIZfp4Q8UUUCZ7qa0u4li/zRS7L/IVWajMyGUj?=
	=?us-ascii?Q?ZkTiXx3iuOigYH8BAPDxf8WlxE7vdUq+kJIynexkzQHDpwqV/pXbmRGkIBh8?=
	=?us-ascii?Q?LIMmkPPTbm7BX4/wOQ502nOLl6UxRYKMYKHO7wD6oWCIx7Zldbg8QnXOlnGB?=
	=?us-ascii?Q?rIcx17s6+BGShpEZ9HKTCkyoYvRhOgl4uDPljxYdPpMTU7GvdthR1vKH0SW8?=
	=?us-ascii?Q?We2CMueWFeMYqannuY98+sYWBZ7Gj1sYZRWXe6xQbTJst1pYfQHrxqqHaXCl?=
	=?us-ascii?Q?fL+9/TaNpt/rahne/hFqyrObRWq+JHlaaxxi+Og1zxQjuiagRPYmHu2rg+FC?=
	=?us-ascii?Q?iksgiGEjcw1rKADqrEtCMYJ+9LmA/FtWjlaRPqmbYpuDcmdDqeamQaW/n72b?=
	=?us-ascii?Q?YGYIrwpzVdj3moASd0VdOwm0MOuZaOeo1QRdKUm4SzUfHLuRuez/O/9rahFN?=
	=?us-ascii?Q?N9Ske7jgv79qihVxi8zeOzrit0nWOnxu9rcDHhW6qQCVDbcvFAzZbPzzsiBr?=
	=?us-ascii?Q?sqnKC+Lwjq30+GuGc+57raGVuwkAjcz16uHIy/mvCagzxeIevJUDqy8JEC26?=
	=?us-ascii?Q?g6uULxDBnKa2jxKVgEzTRqA0XrHbmEixh6hRE80iNZk9lTbwcBvGkP+/MDVX?=
	=?us-ascii?Q?YN2smrv+VEFwETtly8ifaKUwphZxLOZBDKpm/kjHBl1WGhpT5FmIJo8cv5iN?=
	=?us-ascii?Q?+DuqSzTNPfR9r4cUX6qSOwX3tjlF1voPabFPKf7rAbGrF38/R68K2bShijnY?=
	=?us-ascii?Q?o9aoqTOO6si4Ivvqmyp+efFaj7GvaPgUwd+MVJ+nZm27NBd9vztu6UcEGUae?=
	=?us-ascii?Q?SFU6pKQuqtAnvwIuXMmbuhF2aCLJDPkVh08VP70599uRBs1mPOCAbh7LqX/z?=
	=?us-ascii?Q?hCsey1xb/gtRBKxp+m1LYjUF1g4VJjORwZpxwmYS8G8X3+bdVgO3KGyCGrSp?=
	=?us-ascii?Q?b7OhYDneiEZQ3O0RaED9cvk/7IhOkKCV3RvbLMUUJOjUdyFau/v5EEvGWAmT?=
	=?us-ascii?Q?VB4PCvus81mxIlDckZitzDpv9AfmZqpRFvdzYvrwaj5zagcM2Ma6QzPDPW+N?=
	=?us-ascii?Q?w4H5ZxksbsKpS5TRxmdXuohPXn8+o+SgUZCG94E6nYxDWGFJeOB8Dh3CNN5m?=
	=?us-ascii?Q?V8DCH38Uf7TPQv5zXv2M7Blk+T/f7nNrwM3Z5y7YCzvmX4vtVUq9QReIZZ3g?=
	=?us-ascii?Q?fj6eycXUGnm0h7u3eOxxNukdkpZQeWkLecYXH5XlUS8v/OdvIvFYmwQo5RyU?=
	=?us-ascii?Q?/D3hAiqyWUXxH++L2OXd/lbQFJs12wKSWzXIl5ze6kUt3858kXFhpwoEv3HK?=
	=?us-ascii?Q?8sr/ymlOIPIeAE6IbEmMuqcBisYVfs=3D?=
X-Microsoft-Exchange-Diagnostics: 1; AM2PR07MB1042;
	5:IC/P5nGySQNzLscU9FzjTe9r7BwMbudKAh1emhWCqkB0NwKXmxmxLe7JZubgKpbA9HR/laMFJ3MlLbvkqDWPWMMvQ8sZJNsZ6qpSIrG8Aj4nNK8kismZaqCw/tohc9oBHSNxoimroVPYAGcjagfLBQ==;
	24:Kp0LTyr2OjryQ6EBSAEOtjX9TVtO8JRnddndPtLBdKkfKbfIoVZQHQLjlVqJbR5NSQeOvq0FjkfI3QnorBv8bj5nIsrMwKDCJKGWgCk36k0=;
	7:PwWG0AeRDZJdaxxKf//hVLDp7z2hk1deScGUMy6o8o6gY+eS2sRJFvvupONCxI1wTpAZoLQ+UUs9Qu6RS1bFXa3RoC1mexcMBIFI9ym1U7aTy4z9xbopxP+MhemrtZyqOV2RcedbClKtIbyeNQzH9xG54Gnlozn8uK7z/dhq33dVguO/o97AaHVRPHfTEBbDrqZWDMpor6soqSDwSxcZlYyC561/EgGqtJfOBhpxTTs=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2016 16:28:32.9193 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM2PR07MB1042
Subject: Re: [PULL] fixes in Dependency Explorer
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
X-List-Received-Date: Fri, 10 Jun 2016 19:00:48 -0000
Content-Type: multipart/alternative;
	boundary="------------060003080609000109080900"

--------------060003080609000109080900
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Yeah, sure. I will send them on Monday. Thanks!

Kind regards,
Bartosz Woronicz
Engineer, Software Configuration (SCM)
Nokia Networks - PL/Wroclaw

On 10.06.2016 13:58, Burton, Ross wrote:
> Hi Bartosz,
>
> Please can you re-send these to the bitbake list?
>
> Thanks,
> Ross
>
> On 7 June 2016 at 16:15, Woronicz, Bartosz ( NSN - PL/Wroclaw) 
> <bartosz.woronicz@nokia.com <mailto:bartosz.woronicz@nokia.com>> wrote:
>
>
>     -- 
>     Kind regards,
>     Bartosz Woronicz
>     Engineer, Software Configuration (SCM)
>     Nokia Networks - PL/Wroclaw
>
>
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
>


--------------060003080609000109080900
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Yeah, sure. I will send them on Monday. Thanks!<br>
    <pre class="moz-signature" cols="72">Kind regards,
Bartosz Woronicz
Engineer, Software Configuration (SCM)
Nokia Networks - PL/Wroclaw</pre>
    <div class="moz-cite-prefix">On 10.06.2016 13:58, Burton, Ross
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAJTo0LYx16CNV_bvxC_Oe6738YfqvMwK38vC47jnK-HMHUmAyg@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <div dir="ltr">Hi Bartosz,
        <div><br>
        </div>
        <div>Please can you re-send these to the bitbake list?</div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Ross</div>
      </div>
      <div class="gmail_extra"><br>
        <div class="gmail_quote">On 7 June 2016 at 16:15, Woronicz,
          Bartosz ( NSN - PL/Wroclaw) <span dir="ltr">&lt;<a
              moz-do-not-send="true"
              href="mailto:bartosz.woronicz@nokia.com" target="_blank"><a class="moz-txt-link-abbreviated" href="mailto:bartosz.woronicz@nokia.com">bartosz.woronicz@nokia.com</a></a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex"><span
              class="HOEnZb"><font color="#888888"><br>
                -- <br>
                Kind regards,<br>
                Bartosz Woronicz<br>
                Engineer, Software Configuration (SCM)<br>
                Nokia Networks - PL/Wroclaw<br>
                <br>
              </font></span><br>
            --<br>
            _______________________________________________<br>
            yocto mailing list<br>
            <a moz-do-not-send="true"
              href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
            <a moz-do-not-send="true"
              href="https://lists.yoctoproject.org/listinfo/yocto"
              rel="noreferrer" target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
            <br>
          </blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------060003080609000109080900--
