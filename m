Return-Path: <VINEETHC@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5A08E00C4E; Thu,  3 Aug 2017 23:45:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.48 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 9145 seconds by postgrey-1.32 at yocto-www;
	Thu, 03 Aug 2017 23:45:06 PDT
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0048.outbound.protection.outlook.com [104.47.41.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC824E00C45
	for <yocto@yoctoproject.org>; Thu,  3 Aug 2017 23:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=2CQLyd3WEfUQ+ziy2EQDHrPnnAW/xXQ5buYfR6kRNXo=;
	b=CR0WSiRqfJeu7nhPQ93euFJJRXmmdmwtrJNJPEIMxZcdjsQ3wFgmJlg9NvAl4750SOOK+YYu8GKfuwMTGGTew2HECbx827LChuXOyicBBs1CYYCE0mOfc2BJOEKgs0k5Y+pqT9i+dOFY+NTwmM8jlNepZXRauuTSo3KOX4YWCsQ=
Received: from CY4PR02CA0019.namprd02.prod.outlook.com (10.169.188.29) by
	BY2PR0201MB1591.namprd02.prod.outlook.com (10.163.154.141) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.1.1304.22;
	Fri, 4 Aug 2017 04:12:39 +0000
Received: from SN1NAM02FT060.eop-nam02.prod.protection.outlook.com
	(2a01:111:f400:7e44::201) by CY4PR02CA0019.outlook.office365.com
	(2603:10b6:903:18::29) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.1.1304.22 via
	Frontend Transport; Fri, 4 Aug 2017 04:12:39 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
	smtp.mailfrom=xilinx.com; gmail.com; dkim=none (message not signed)
	header.d=none;gmail.com; dmarc=bestguesspass action=none
	header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
	149.199.60.83 as permitted sender) receiver=protection.outlook.com;
	client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
	SN1NAM02FT060.mail.protection.outlook.com (10.152.72.192) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.1.1304.16
	via Frontend Transport; Fri, 4 Aug 2017 04:12:38 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
	by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
	(envelope-from <vineethchowz.chowdary@xilinx.com>)
	id 1ddTyY-0008JF-DI; Thu, 03 Aug 2017 21:12:38 -0700
Received: from [127.0.0.1] (helo=xsj-smtp-dlp2.xlnx.xilinx.com)
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <vineethchowz.chowdary@xilinx.com>)
	id 1ddTyY-00081d-9B; Thu, 03 Aug 2017 21:12:38 -0700
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
	by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id
	v744CbjE024458; Thu, 3 Aug 2017 21:12:37 -0700
Received: from [172.23.16.149] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <vineethchowz.chowdary@xilinx.com>)
	id 1ddTyX-00081V-F6; Thu, 03 Aug 2017 21:12:37 -0700
To: "blackthirt33n ." <jjosburn@gmail.com>, <yocto@yoctoproject.org>
References: <CA+z1-f8Fv3DYhfQcPB2v_bV6515-5hf03LBS0hTdFGhn_bfqRw@mail.gmail.com>
From: Vineeth Chowdary Karumanchi <vineethchowz.chowdary@xilinx.com>
Message-ID: <9dc6c324-36e1-2628-5cfc-c7f051322f4f@xilinx.com>
Date: Fri, 4 Aug 2017 09:42:36 +0530
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CA+z1-f8Fv3DYhfQcPB2v_bV6515-5hf03LBS0hTdFGhn_bfqRw@mail.gmail.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.1.0.1062-23234.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(39840400002)(39400400002)(39410400002)(39450400003)(2980300002)(438002)(189002)(199003)(24454002)(377454003)(76176999)(65806001)(9786002)(8676002)(64126003)(72206003)(53546010)(63266004)(33646002)(6246003)(230700001)(478600001)(2906002)(50986999)(47776003)(81166006)(65956001)(8936002)(106466001)(54356999)(65826007)(81156014)(5660300001)(23676002)(626005)(83506001)(31696002)(77096006)(356003)(39060400002)(31686004)(38730400002)(50466002)(189998001)(36756003)(229853002)(2950100002)(558084003)(305945005)(4001350100001)(107986001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY2PR0201MB1591;
	H:xsj-pvapsmtpgw01; FPR:; SPF:Pass; PTR:unknown-60-83.xilinx.com;
	MX:1; A:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM02FT060;
	1:QUYRoCFGLYs9d1UE3XgFEvORzD0zGAQ5Pg/NdMMsyRF7XW3Fsm/1pue/9wG8MK/Yjv3/uiNUaDtTwjE9PbM14vcPJoYZLEQAcV3rVaj5xgs2hi9J9if7v34VNRpTncd5c5oE2BvXzA7ik45wbhK9o363hlS/Er+tCw8xkAXQvVhDA/9FUZ/aFx2WjXGHMy7fWxV5drdHAk3q4fg5fAEIQKCkx/acbxfcP0SG9+8rxd3d/BL+lu+/mtWY9F7psIHwyvIVMWH4Ri0Ujefzoh5Enyz7FbqGDBjkPlrvPk7nvY1iI3rJP3iHCcWkeO8yIaPN7GoCoxPRT0SByHqk1F/6OI7g7eQN+5aXKftW4p9RFeLicP+YMx9abwsJ9PaH+wzmQCfHX7naesT9Q1Qjk2Gg83Wz7UsfkxIX4uTk6Ga0ZfJ+o2DiTiVbiysDl69v2OY2aNIl/x6asekiCtIlGrMSn5movOshsKt3kYHiCuRx/+nKUidkGfudgGR27Rnd1lMgT7nVPCazWW8URNDqZOEX0fvshDj0tLsrxB/H+alFqKW4z+HQtVLq+wWg5cAo/lxdiBcanl5anTkLJn9axmNyxNryRGg+Yfu4xLsfeACqoWWbjZQgzZcmJyANSoTv0PI44rtadP24/7lkXXt/PWcMETkp27LidSKRr+6hfUgxaCv5tP6G2//gmzlfeexYoHqoJ+VOlfb+mw8Kt9FRHDAbSik5RMPaq/ri2s8cgcDJxP3DQxISQuQj+jl8zHM+kUq0UtkvxshzEB6z/lNu6OY2lDxKt++aOGZ8VEMCt/4UmstrBNzwRXItQUdlJ1sHRD3Wz7d4WgRZ71Gvq13fafvvEQ==
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8a4eb15f-738a-41ae-00c2-08d4daef0b66
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254152)(8251501002)(300000503095)(300135400095)(2017052603031)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:BY2PR0201MB1591; 
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtCWTJQUjAyMDFNQjE1OTE7MzpSaStUcXdkbjB1bkc5eGpPOUgyUmJ1RG1h?=
	=?utf-8?B?RldiM0I3dzdVNmRHbC9lNjBZS09qSHRiUWh6QnkyVmpXeTd1ZlhqaWFqUnNF?=
	=?utf-8?B?VDdXQTJkMmR5TlNuSVM3RFFIY3RqbFo1eW0xc3lxWkxDZEVGR3JyUVFlYXZY?=
	=?utf-8?B?ZmpVZFdZVXllUnpuMk8ranlsa0VhNnhoSWRVaXN1aWRLdmhiMk1jTXcwV0Yv?=
	=?utf-8?B?OVNtS3gybUVXQThGYlMzQnMzdm1KejBmL0VXb3NXeUNSLzFEVmJBYURhMSt2?=
	=?utf-8?B?ZjlGSDh4aXdjMndRRlA2Z3F0cEZlSFlXeUlwOHFyTnduUmhXR1dacW9SMlNn?=
	=?utf-8?B?SS9ieGZMUUdIYUpQcXV1Tk9uNkZHeWZGa1QyWTQyaHZNZEpjTnpiaUh0b05V?=
	=?utf-8?B?a2RaUWNra2k0QWJwZzYrUXFuTmhqS2EzR1J1YUtTcmFySkhCb1haSGNzQXlZ?=
	=?utf-8?B?blRxcU50ay92Z2pkL0dwRllVSFp2eWV3Sys2MWlPRkFrTEFmdW5INXdJNmQv?=
	=?utf-8?B?RXhySndhNjZ5T0ZUOVYrRUdxOVBOV0JCcjZ2MzJVUm53dTJoUE5lODBMNFVj?=
	=?utf-8?B?cG9CZ1gxbENtQWErNUJVR0RKVHVPMTAva2dCMGFVTElDYTJuMG12cWo1U1do?=
	=?utf-8?B?SWxrbTVmamZIRzNQcWgySDZSS2Q2bHZtU2lrdERwK2VqbUdZNkx3UDl6bHIv?=
	=?utf-8?B?NzRLcDNNWVU3blMwYmNqdUV0bVRvcTNCZFphVnBTRG9wcVM1TGYvNFRuVll0?=
	=?utf-8?B?TjFvZ292NmN6THY0Tm56cXNTb1RNUlFycStselZGSUJPSjJvdGNDQ0c2WG0z?=
	=?utf-8?B?dXpiTzR4Y0VsOUQ3SjRRNklSVWFvQTluOG94cXdlbkYrTzFkUlIrSlFNNGZ3?=
	=?utf-8?B?ZUlRY1Zsdm5JQ2YrcjFNVWk3eFVwdS9KZVhBZVZyNitoMW5RaXREeFNlcmpY?=
	=?utf-8?B?N3dLVGNzN0VSS3BLZys1R3BSWHByTk5pWXZ5cXZmQitBSzlWRllKN29kTmg1?=
	=?utf-8?B?Y2V6R3VWQ1pDTitJbU1JOTVRYzlrRGNWbFo3VmFhcGhoSFZXUGs5K1NSNUk2?=
	=?utf-8?B?MnpTdFF0dncySldnd0gxaS8rYWRNUVlPMTlxTTVnNEJRN0hCSFVhMy8vbkVj?=
	=?utf-8?B?eHU3aFBnTldJZHUveHlRSDM1Q3J5dmgyV2trcENvVHhuSldQTHdhNUJaTzdn?=
	=?utf-8?B?NnRCSHIzeUF4TFZTeThMUVUzbjJQcFpMQmgrVHRRVU9NZE1BVldac2tydjZG?=
	=?utf-8?B?VmQ0aitoQ2ZIWGdJZnk5bDJOQjlidWJjak1hamJYN2RFV092TFlBeDFRMHUr?=
	=?utf-8?B?SjdaVC9tTk12em9BPT0=?=
X-MS-TrafficTypeDiagnostic: BY2PR0201MB1591:
X-Microsoft-Exchange-Diagnostics: 1; BY2PR0201MB1591;
	25:kpnrsn2UYX4xqcqsfVbBBdatroqjuXI5spgWFz4aM+XYor3rAcorVp32Zn3gLvRtzuVb0yTEgAz0aUYk77bhgJKPovAW6XgUzmsb1stQJbaZomm8gDCin/nt/dR782eQzcA05VmCMNJH8xPlMvW3xghYc/SKGEqyWk+b+OIGLQ8c6ICyDWj5nD50wOV+BYrDYUCmiQO7trsCSGb57O2wGFGfXU88lyebr7d6ELSsznGfDsEOhtyJzCjbxI6Nw3gJywSIg8Ai/ydQR0Hc+xwvEdSxPRnQ87LIhQ4YBTBhhU3gWvyOw7l4p3Sv4EZj8uq+o1/wTXpMynNX2eZdZbmMXcNrCMnoHdq4bGWNXvXqkSm63z7XmyUTIDSJzfQPl4xbxaZ+TiVWPMNGTW7bowN3eN1SAQAVFcmb5IBUA/8AdQA6tlFjKzb7uLs1a7H1wlvkaUhfzxwlQxKeFPvKsB+9Cg7sWV+E0Httr74o3gQZceJiTHgTt4UWSa69qVQxPOPvCWzT9LW4HytpdLUzJZpyFa48Z36DNGNhbhdMN8cDDDTKtifU+sN8xP4YXhfXk+lK5MrenbU6Z3uFOnhQAVWa2eXjAHs758GjreBizBZBh2wTgn5y4ExrlQk+iCWQViA9BvU0IdgPkKWoT3gkE5BwMo2K45wQu5MrbVdjzxZsU8CNrZJKU7KKJ+Jo1yL/hOIyEBb3QJTnCo1iADtCQdX6JNEZjlSHZD28wV761Ob5qoDUfAiWhf3s9e6R7PYMVqbTJCwefwNGCIsQCJ4yo6qNbEnH67+PsO7XaBHPz2Y0wF1GezifYKjroECuXXnyyJm1F2YeVenPOB9S1ZIYUxYoEwEA1v5KOCOOPzKVlkhWQOQYsQWnZRm3vdc/5vfkzmYpUim4aa9NBTkMo7YMsz11WLiu6la04wiKAta6bXJnmsU=
X-Microsoft-Exchange-Diagnostics: 1; BY2PR0201MB1591;
	31:wPIWAoQCcVQNc/ltm3QZeGJXI2/XYhse0WImygxUNvpkQG3OkXhJyRLkKHgYGGhaoqpPEfK15Yq6OthQNprAu+hNbG+1lnJc65qcLy1YJJSpcIglI/3dms0rWdB6nuJElraeasNiMC2RDDtK9h8yqcH3+kiNGl3SBBbHC8S2dta6rTYqWC5uVHNvAnPSjr8YB8NFGqjEQzx4rVX3p2AUD7l2R2t1kBOVFbl74y2yB15Rf0GmhOLNMjY62lG7Z7pVGHHkDq62l9kjvsDLCUG5clWnmY+dxxh/Xa5fetS18bBfE1/R+7x54rMjf1AgZacsLsg6NBjstTfS9p36rVQmeyOSZurNUkCeweqCk2o9TPPkuM91M8X2bXLsLX9y4WVxNlM/l4V6n2Ktzmg7sF2ffqZrX/HGHu6WH5YZMm4IvL/p7GPuyzvIcDRXp4CHjDnGyoLX/eD9UgMg3qZ9yH/vEGPtQ+DSN+WfMFblUm9Kv5AhnxX58d6zcgp4lsYNuSL+1lLezHAmhyaF9RyP1A6c8tuyAytMFuY50gEolpO+s215TrvS2vEUEDL5we92TIFn+kxTgm+eLlJGDLb728ySkVjrU+10HEfCU0clF0jy1X3CxY2box6o0CL3pLVyXL59Z9b7gkeTlA0iXEVIhMFcbVrG2reSnU+Yz2sQ0An2aPdqHYPPQj/uVBzGVGNn3EwtTrLmqE/QTnGKvS8/A8A1LpsR9xyhICcQH39l/lqC/xk=
X-Microsoft-Exchange-Diagnostics: 1; BY2PR0201MB1591;
	20:N94cLCjSeFntJRpHXuitHFx7IV1GVpbK4dxNvBEi3MXzBmINzOl2TrrtiPRa0y8mjCwWErOhBYjwmsluRVrSr0kI7PqED03TYccDq1ACIq0M03hATvGM1V/ryl48fcUycDGVvhJVLsed3lCAB/vciSzNcB8HaW4SfMYkfGoCF/U9i/I/FcAo74tV5khVDLufki1PAiVLpwB7QBhe+LaX7fVA5Uc74fBJ4Mf7o1yKdS0oH8CAzY9Ng0DMkzJpkVX/xTtPZFGryAAOjT5tH/wGhFhaKOJEmcnGH6l9nsPItexOZLZ/QsUqW1cE0Q2NK/rbyTAGvJwyhaWJoPf7ZEDDGggY5Th1cyup9xdd+23h/qMygYSTFzd+tGacgkk5CypWMRjyvNEOhouhGuGvjdsAT5ezZ2MCSyCXFlMqULQL92EnS0iL91Y96rl/oJjUEDvJhmnT5e9W1y2MGEdQFcd7K5QNs5iUf9cwHKErpEKxYhZHABYR0w3la1CqBgMCg/8L
X-Exchange-Antispam-Report-Test: UriScan:;
X-Microsoft-Antispam-PRVS: <BY2PR0201MB1591DEBC007016B1ED093A56B9B60@BY2PR0201MB1591.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(5005006)(8121501046)(13018025)(13016025)(10201501046)(93006095)(93004095)(100000703101)(100105400095)(3002001)(6055026)(6041248)(20161123555025)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123562025)(20161123564025)(20161123560025)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:BY2PR0201MB1591; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:BY2PR0201MB1591; 
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtCWTJQUjAyMDFNQjE1OTE7NDpXOGhHS1JTS2JkcGRlN3JoZUl2azlaOVcy?=
	=?utf-8?B?eFQxZ29Vc3FxSm5Xb1U2NUFNZ3Nic0dVUXVuWWExeXNyczBBMys2UzRmVTZa?=
	=?utf-8?B?M3E0YkpWNFlBYVdleUx2TmhscUdteGdQeHh2Yk1JTFdHQ3VqWWhGaC9GbG41?=
	=?utf-8?B?SW0zYnR1Sm40OXBONWU5QmZWZWhUT1h5NGtxTFRacnVUUTJ5Y0g5UjVidjNU?=
	=?utf-8?B?cDJwS3RvSzVtNmlnc3ZxaTFRQ0xYNTZteFIxSktBR2I2SmFzbVVYenQwVkc3?=
	=?utf-8?B?WS9Vb08vbUcwQ3hsY1F3dmJCeVZ4UWtGSHd6Y2hMYXEycVBlL25ZazI0Qzds?=
	=?utf-8?B?dVl4M295dERPaWpGVUN6TGxJZmk5SjRRd1dBb1o2VGtKWTJVN3V6YmRyTitU?=
	=?utf-8?B?NlFnRXAzQnU0U1hsNEQzbm9VVUJ6TEdEUndxb0htem03akNOUW1GUGNqUHh0?=
	=?utf-8?B?K0huZ0NVSFY4MS8wZnhYT0xLRFAveGtYY1dPMDBwcGhQUzVkYnl0SVJPZHNO?=
	=?utf-8?B?b2I3ck5SVm8yLzJVTWcyM1RiQ2RVZUduaHcrRHQzVjlDbDVCcWl1RGtRMnVF?=
	=?utf-8?B?MWlraDA0VXBCTG5BamkwSUxUekxMckFPMXBLcUt0eEZKZE1hR2FWR2NaQmVK?=
	=?utf-8?B?Q2hjcUFtRW5YUDdmN0VpZVpHT2xFRDFOMGd2NU9pTFlCRUV4Z0VUUDF0aWEy?=
	=?utf-8?B?MEcxZkhBWVJVenJWT3NWdjMzM3hLd09QMk5kaFZsWjBrdklGNW84ZlJoaUVl?=
	=?utf-8?B?SVZVUzd1L2RvTjlBNlpsYXRpclM0bTRDbFRUZFl4ZWhPcDBMdFdPeWp2WGY3?=
	=?utf-8?B?dHc4cEJJbkdkL2JyVEo5YUJzN0tIWGczL2ZWN2tGcXExN0kvRkpGOWV0UzRp?=
	=?utf-8?B?MGRjY29vR0ZKOEVTbVdzM1RmNDgrVlllUzNzK0VGa3dTMDJ5K0dramJtWDNZ?=
	=?utf-8?B?ZEt4RVZMMzEyamdrSWtVdFQ2ZERzd0p0MUJJc0drK2tBRGlCN0JueThYaVpS?=
	=?utf-8?B?eVNzMWlBRW4xZUZaZzg3RzRlTHFORDBCb290dXZ3OFQxbjVXR3lsRlprSkxw?=
	=?utf-8?B?aVhTaWtKdXFob21YTFpWNWhXQXB3T3VRYTRheUZmOHk1Ulc1WXB5eE54Wklk?=
	=?utf-8?B?OEtqK0NjNzE0bFdjS2ZWa1cxZi95NVpuYzlQQ1paSGMzUTEzTUpQc0ZoYk51?=
	=?utf-8?B?UitZRUtZSUdqMDVSS2NPRHE5c3h5NnNpZnJRUlRHZ2tFWkJJenRYRG5KeUxD?=
	=?utf-8?B?UkFUaDM1RDJjbGJ3amNESHRxV255TXh4YXN5K1A3SkVnZm5hMmtxUmpkbEpr?=
	=?utf-8?B?dExjb3dVNUZpdG1mRzhEemQ0U3dBanppWDRraTVvQnhwdmxPSzJnUHFPZ0d0?=
	=?utf-8?B?a2VCanF4R0d6Vjhrb2hrMkFqNWw2R242WkU3TWEzeGNUbWphZ2JtUVJpV3p5?=
	=?utf-8?B?QSsyNGRPU1EwYVNCYkkveExmU1lJL1d0aDFqWThEZ1ZhbndSQVEvK0RhLzhZ?=
	=?utf-8?B?TEdnY21iVUV0b3hoQ1hNZjdkdVZra1ZhdjRNN28wU3pnRkp4QXkyT0hsdVJ4?=
	=?utf-8?B?NEswWVN6WmM2TnBmOVI5K242ZzU2Y0g3MnN3M05WclNzUHk3VlppWTVXOGRC?=
	=?utf-8?Q?yhci6J0zvGvZeeJ9DOmYX?=
X-Forefront-PRVS: 0389EDA07F
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtCWTJQUjAyMDFNQjE1OTE7MjM6Y0tDYmwyL1VrM3luUDhoVEwzRG5maHQz?=
	=?utf-8?B?RjJCZU1xSUt4c0FYeGdlWTd1ZHJFem8vQTBNU3ZtMXlOYkNvMFh6VDNqeGRz?=
	=?utf-8?B?N0pMSTVJd0F4czJ5Mjc0Tks3dlFxT0RyMXA0UXk2UU5hWnB2QWZjSDdIMjZV?=
	=?utf-8?B?dnJ3dUwrOTQ1TUtUUzRRWmRhVlJ5ODlOSUswZytIUXdiSlVnSzE3dWlvWmI4?=
	=?utf-8?B?TWVzYndYZGpoMXpURlVvdUVSdGdzMEhlMERqc3p2L0dKUEppTmc1OWRTcWIz?=
	=?utf-8?B?RTRPaG9La285bHNrNFBMKzJ3UlVHWmZhdnFqZlFzTE1xMThhblJ0OExtSGhi?=
	=?utf-8?B?YiszenozU3JUYzd0eG8wOWduYzZreTFCeVMxaGdIV0I3VndTWG5OMEpKT3RV?=
	=?utf-8?B?TG9CNjZlUVpyWmg0anlnVDJZSTNsYkJYRzFEaGZWV2hEaklkZWE3QVNrN2RU?=
	=?utf-8?B?QUFTempTeWtxWnF4L2xOdWZFdGJMK0EvLzBmazRVdWZEWTJvNFgvTzlPSVR2?=
	=?utf-8?B?dHU0OGxMNXhqcXR4S0JFWG9IdDBCMktrYnRaMzgwc01xdmh1cGJOa0UxNVUy?=
	=?utf-8?B?ZExNSmtDdEF4OG43aFZoSnlFOXp4RDF5cFhsSjF5N0NCK1MwRVRwZXNWUFA0?=
	=?utf-8?B?RlNUY2w0TmNES2JGMXdpbGJlUndqdUJITWpGdEtrYURMbXVxQ1YzYjB4VnJ2?=
	=?utf-8?B?ZWNkbmVsSmNTaEVGcXBRNWlPY0ZnOVRaMmdTSzhFbTdNVHFscjhEUE8xc3Fy?=
	=?utf-8?B?UU9uT0xDbG1ESkdkc09PS1pOcVJpdnlyNU5Sd05lQ2VUeUJkL3E1dTQwdHgz?=
	=?utf-8?B?WHpiNU9VN0xleUphMVRwd1MyeXd1R0Ivd0gwMUpuVzZkWTZOMkx2Q3RJQW5a?=
	=?utf-8?B?aVJMeWQwWDlISWFCejU0azN1VSsxSUxSdlZIZ0g0SE15UWVRSWhhSHMzQUlB?=
	=?utf-8?B?aDU5WDZQWGJ5N2QxZEo4enFnZ0ZYT0xzaXFNVmVzbEMwcSs0MGtOaFZqUHUy?=
	=?utf-8?B?MXJCZGJCeWcrUzUxQ0JFZWxaTkZrbWlQS04vTDIvUjNuL0hTdXVOeG8wRHNX?=
	=?utf-8?B?Sm92WjVrUUdGbTdHeWVWREZxLytaTGhxL2ZFcTJKZUxpbGhjNCtEaUFMSmJp?=
	=?utf-8?B?T21UdVVveDQycGd5dG5mdm1WeXQvY1d4OEJyTzBUTG13cFNXRzhhOEwrT05z?=
	=?utf-8?B?WEdaeU9hVWFualJEUXRWd1dzbTFrdFlrdHJYZnZyVWlINlVBWDFmNFZEYnFH?=
	=?utf-8?B?QnlMSXl3eDZmbit2aUR5YjhFZkRMOW44V2dKMjJuT3V2cEsxUHRrNDNoTXZY?=
	=?utf-8?B?dHU3OUhITWE3Q0sxSVdzcVlqbTZyUTNCc3duT0FoeC9DcFlMTU8wSVZ6WEF5?=
	=?utf-8?B?MXUzaVlWUjZLRk8wSHFmQzBjUks5VStzQ0ZHVmk3MWNkME41Zjk0WU5HT1Q0?=
	=?utf-8?B?ZG13d3dEQ29xVUZYVUtpYTFTSlBldDVEWDFpTnUzQnNZbVJKQVlyM0FGSTlE?=
	=?utf-8?B?djROUTVFMXFnd0tLUzFqTFFxNVB6VmZzYmxuTWU0MGM5N1FSWkJyM1ZrVTM3?=
	=?utf-8?B?Tk1tazQ4dk9DSjhIZUxqaEN4WUtOZU5TYVVRNWZDMVFyQitZdTR3enRlMlRq?=
	=?utf-8?B?c01vOTFzM1RYcmcwSnFYWlZVbjZzbURhZWcwSDhzZmZYa2ZrS3IwUnprOGg0?=
	=?utf-8?Q?laQHYUWq7XdpvPbCmZZiv++wYcEI99wuqXcmyVyPt?=
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtCWTJQUjAyMDFNQjE1OTE7NjpRYk9GQlpOZElDUkZXVE52TjJZdEI5TUZZ?=
	=?utf-8?B?b2ZNeTFtMi9qaXpDb2Q1eUxRWTVoa1JoODNMTEpPNFk2ekNpQkxRanNxdlhT?=
	=?utf-8?B?cmcwbGlqQmZpb2NkRXpuUWg5OTEvbGdNMHJDNkRwVmNaUDB6ZkxKakJNR3BR?=
	=?utf-8?B?VUxQTVVGc3dJU1JvRlAyYzcrOE8rT2U1TklId0VrMHdzMWd2Wkc3UXFQcXBv?=
	=?utf-8?B?UnZIWXBLOGhhRVFsazlWN20xb24wNU12ZVozTkRiYi8wS1hWVldGbFNTMFRn?=
	=?utf-8?B?NUo4V2xQZzhqTHdmT0pyRUQwTW9FVWJNdmE2QldmQTFhYlpvd1NvMVZSUTEz?=
	=?utf-8?B?VVFxVGtSM1ZwbFR1TXJwa2xTbktLM3NJL2RRaytKcEtubktQMDdqMTJobDha?=
	=?utf-8?B?YzNCWnhBeUM0MzJEV05ueDM5MWViN2plVko5aEpzRlhDaGFDTXFyUG9nWXdw?=
	=?utf-8?B?V2pONENsaFRlNGwyMVdCRXh6QUR6N0tMaUhtaUVrRDduWlMxeTM3S1V4OW9k?=
	=?utf-8?B?NUlwN2Z1YWc0dzR2UFlxR0ROMGdpUy8zQ1I2R3VxeXVZZGZia0xpbWl1ZkQx?=
	=?utf-8?B?a3ZxNS95TW1IZ2c3OTlaNTlTRXlxTWpJbG5nbU9zSHl3cUxKVDlsTkluUDF0?=
	=?utf-8?B?L2R2NDVGdmhka1E0eDhNWkl5VnVmTmd1eGNXOEYrWTJtMlNsVXloTFJxUzhm?=
	=?utf-8?B?VCsxeTdoTVpCbUU5SVFsTmhyUE4vdmNMTEVqaS9uTm5UKzJ4SWxKU29ES0Nt?=
	=?utf-8?B?U3RRNWxHVDFhMnJ1R2dndlB2SmQyK21BTitBcjNNWTZzQnJDeHp2bUFTQ1g4?=
	=?utf-8?B?eUxiU3ViZ2VJdElwdXk4NGFkUzhDaWRnbnBFWU5PS1l6VFRheXdnWUUwKzYx?=
	=?utf-8?B?QUFQR3BFem1oMDNIcERoeGxWOG12T3JEcGNIVHVvUWFYRTY4blpmdGg3WXE0?=
	=?utf-8?B?c0R0b294cGNmV3ZQRzh5cWlYSC91d0p4cWxiUVRLbGZUTVE1SkdCaGJZQzUv?=
	=?utf-8?B?WTlaYWRMdExYRzB6NkwyZ1RrbTBmN2dMclR4R0ladE4rWWlLOEhMT3ArOVVw?=
	=?utf-8?B?Wm41TGpXY2VtNE9uVVgwbnRSanJ1Z1VxaEFkaHNnZnVBWWY0aVFETlg3MERH?=
	=?utf-8?B?Tk9VMTJ3ZGxZVGtzMCtKa3ZqWEN5RDQ2MGkyT09pSjJSbXM2YVdaVVYwVGIv?=
	=?utf-8?B?Tk96K0RVeXF0TkxBWFR0NVd2RXo0MzQ4c1NIVlEyVmxWRWRKRW9oZTB3ZkRY?=
	=?utf-8?B?SEVjcXRJcldJRUIrU2lvaU8wZW9SMlNreHVNOUhUSFpVVGw1NStvb3llTElP?=
	=?utf-8?B?U0tzaG5lT0lJaFQ2aVAwRXVPMzlDSUtocUhwQmcrQUtRWjdIdzhSbjdTZnVk?=
	=?utf-8?Q?4K4z7LtGn?=
X-Microsoft-Exchange-Diagnostics: 1; BY2PR0201MB1591;
	5:ErrC0G/Cz/VVap7YKRXUKtn5Lmsz4wxxQtkViSbdQtDfjxFn64yUvXLp1wr7aASOS4V2mFsuZNdL1ySkXqNE7DXVTOxv9cHui5X7aBvKwSIsUyy4nuwz17kA6BDASjK/k4Qj59OqK5QkCdGQkgJ33iP6EhqSLsS+gXQ7XXls/wG/2Ai3Qi402glCk2mRSlIf+u6kCLUrJO08sAlXLwO1v4DyrGyMN0f4SkvAf70oblygrzQdppHhL1zCMEti/St9B2mAEazLj0IaZc3+gEEtZaSbGtIGYwNU5xNs/NhtceCtbvNrhk89oqECmogBQS5eBHkw1O7sGZBwy63KGIjH/9tGmPvK/EVQAmA/Z/iWYSNvCH3iHcVToa7kDXWclNvEv3c42B1lJ2iNd+Dt//y0wXo6oUw7ft/KwVGiDyN0O50wtlkUfZv/RPsXUnTm5DrAF9d/wWRXB8cq5/SUbc27FQcvjWzVlRMlkEpZaFhKz1mxmlVyLVLRsCQE1azQv3o3;
	24:JGCf3BB07mEmEinbTy5PcgxY4+McdsrUrFHvn5OlQZtbIMUcVDKDEktfeqeuBDYVmCzadVq+chUEsknJkC93CHANlZs1GJBt9Ekw1y5tifM=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; BY2PR0201MB1591;
	7:+7LM/qC3QHjEXqyvMul+uXBfrPC6ZK9ZhRRpInf4UYxUa4E0Zw0T8+XbGlQXEdTpCKSRchfUUM4pC8UlydUyaq+WJkUQVYNqf0h0zrOKT57sIKab8fBwRqjHxEA67HtX8X/A5yRSHE+b5Z/4v54E1kV1Z+JCsGICZqnkemfNjZY8ZCa/E1X3prmS4q5T9JNm0I3A87CkfAVmJ3cV/fu2Niv9AB7j2BEHIyuWb/32CxzKxIE2Let3ihdnqsnlG+GxCCccBj+JtiOZts+64elrCKSuV+Rstz6tQcu0QrUmQpY3aDkytfEHdLp2g5sI8eVnL9a66kqf2F39+mrl/IXgxezjaVRf3klYjHr6AbRqD9mB0SgUrMDQyPBXUo+kLyITPKlqDyaT0+3pO6pN4FSGUnm2CjkE6moolmcm/9zO914PnZFL191vUedRmYZxqr19vZ4zFLzw+tm8w0zXOpVBYy/CjKbs1v8QEIP7RNqNSbvLSs8RbxU+d6OKdne9BPJt20m+60+7r4dqitReVtYUQMi+WzHpV+duRNxlCaW7idq7a3wgdMGemZ6FJc97C0tRSICsgVsymlVUtYvtBwcN6tMo8diNWHbG50Yg3n8Zchd8ZysKEsvwBQk62plg04sRyC0z4NfGrcbtmi7YX+AOXA9kE9kZTXFLbDFDzRLTbkcaH6bPDi8DSlM8hQvE+cLvfW1uCFYfBlATlDfAfSTMx7SElvi4HIntVBKHGy1rYKvnyPFXVtnatDd8NV77oLlCaspM8Fbrg7bb6oueT3q0sOzMK3YxDfpPwEug5dXSpLw=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2017 04:12:38.8105 (UTC)
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;
	Ip=[149.199.60.83]; Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR0201MB1591
Subject: Re: bitbake download only
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
X-List-Received-Date: Fri, 04 Aug 2017 06:45:08 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

bitbake recipe/target -c do_fetch

VIneeth

On 8/3/2017 8:25 PM, blackthirt33n . wrote:
> Is it possible to perform a download only bitbake of a recipe/target?
> 
> For instance only download the necessary files for core-image-minimal?
> 
> James
> 
> 
> 

