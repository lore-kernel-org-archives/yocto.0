Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 648ECECAAA1
	for <webhook@archiver.kernel.org>; Thu, 27 Oct 2022 16:01:50 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.83])
 by mx.groups.io with SMTP id smtpd.web08.8344.1666886503846799125
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Oct 2022 09:01:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=bImhUrmb;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.14.83, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AVESkz5vomLcfSxPyTEtw2vg78EqXrdqaFN5SzKSbt3qEz376eBZtP6nuI+xczPre6l3ODAqu2pJuA4f7738NBMzA21NHzAS+gX/hjBJy7VYpyjPjrnTWUG4W4gqbT/7R80xGDxASki+5e+3N/k/c5O+YmhXR2/mDTv56poR8wQwmG9UTKglqCAWot1Pn/lK8HuuxGVtBBjgmodvU/5igDOYz2W2SkkEUV8B5M8aKqwtn7YoqcJSOxIBvmeaQO0GabbKWiIMEosoqNe5prEWV8F1gAKNv9pmK9O/lW375eC/XOoqDqxau5TYyrbxtEvFXVvMEa4Ywnp3zLT2mJei5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JMmtR9Rr6BfY54cww7tnIUpcDxiujmmnz9XcJq7w+dY=;
 b=gxAbzJ82gmtfjkKEJGdAhMxNdfBaIc3KoGrwLbiV6mk4sC5l9lUsa+EproWZ37CMJzQ/J9yKLD/e3+2VYHPk3Tcv70cXX+Zi58MmmsatiE1c5x0AjOMyk9djQSv37H+eILrfd6z1arIwTH5UjFzMVaIqQlRKURAVFFpjYq4cs0SlleXbSMZM5tGyP7IAkIayqmrwZc16O6nBo+9yOlCgl0eFFxZ+sFyI08nztlaXP9bzWbCEN2dgXkkgLxiXRMEj4rfpEHE7ENN6F+X1MVjHc8icqfZiblNepOgJNg0vuEhaSAEqMTEMcPGC/efkDRiDOqvBE6iqNeMNVzxm9+6lgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JMmtR9Rr6BfY54cww7tnIUpcDxiujmmnz9XcJq7w+dY=;
 b=bImhUrmbsDWzDB1SwWZ8CLXhclUrxHjrgJG+uTCgTgQ5JMtAXQfYfLgR5txrBR8FdVHRM9bxBqwo+QA4z23RH/5+xZfCrTjMd74tDRo6KOEkgA5BpXZwcd+8xuOTMkVaQVzs5e9iskFLu7CoV5h8CJOKtzp2tVnr9g3DsgQeSxIDlkhxBom7Sn7DEm3NWApBe3GMm9CiCuToBJ1MsRciabKWLYTQKvef1Nmpxn2myr72IF/ea3YtOaR0lm0NZ5GOwwzRu8X/fXrjF541gIQR9qfsXvU2+hUKD3JLpM9QxmAQQfX32FF/QDQL9XpM1a9XRZjfrpuwqj6y9GT/SugPzw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AM7PR04MB6919.eurprd04.prod.outlook.com (2603:10a6:20b:10e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.14; Thu, 27 Oct
 2022 16:01:40 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833%3]) with mapi id 15.20.5746.023; Thu, 27 Oct 2022
 16:01:40 +0000
Message-ID: <e51c2f9c-fb61-0536-9b17-0d52970946e2@theobroma-systems.com>
Date: Thu, 27 Oct 2022 18:01:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH yocto-autobuilder-helper v2] scripts: run-docs-build: make
 the workdir pristine between tries
Content-Language: en-US
To: Quentin Schulz <foss+yocto@0leil.net>, yocto@lists.yoctoproject.org
Cc: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
References: <20221013121735.39847-1-foss+yocto@0leil.net>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20221013121735.39847-1-foss+yocto@0leil.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR06CA0102.eurprd06.prod.outlook.com
 (2603:10a6:803:8c::31) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AM7PR04MB6919:EE_
X-MS-Office365-Filtering-Correlation-Id: 0783703f-c0e5-4970-ca8c-08dab834892a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	TPkf7rDYlObx8z0lYFs7t+bORY5pboOZVder86VN5FgzjHaZ2KwB1MPNI9wAriC3QGF1ojum/9FSNAVFvDNhTX8mdjoM1WE4SqchDsnGwySR81Hi6eEtEYho11oGDnWqW8WGpc+UxYyiBw8qiay0KapQTv8H2bL5GLv/Zhk/OiFBvrqxWv4JFXi49uMPEAsfHYOxyxgRujA4BzE5mWfhbOz7LMQtwuuFHbG+Z4tktuGneKUyancjAd1qiutyl7La4Hpy+Dbr3U/8zMyTteuFHxhVruVZBW4yx2ojqOkqc9I6rJqZBc/lHSKsuXkzRw4xoxfvne+AvN/Mp748PeNCVCztfeGwcssBzYs6z80NIubrz9G0j7Pm1gjBB/68duHyCnZ9UDPRdMN9muN52lTn0ljKNcO9cXL0IqqjB/XVl/eIpuTVqQpcrHAkxqVbi4wc2TcFtuSDkdKwcz+ZZkVONITn0OGNebwCaHytggmnr/XkeksYSCmeQFdc57N7i3L1GzfuZeaQxHC97Uof8/Xs3Cf+grYDoc3siaSQLh2zsGsxnfEx4DUISN7PIEabT8CEvWBljY8XhhmFfw6v1Mj9gKFYTC/DIdY0+O1nOUsbrZPdUAEZKblTSkqTjM+s4g5K49E0U7nBBXgfEyIfuEKUi4z6J1th9KegnFSwfpwYwbfxcPhipO/fDKNy7pvHVtqNCS+2mqRZWJ/Ds9IgG+lepjkI/cwMA2x0/bf0RA5FMEODFqTcoYpXgucr2IkopDfCRvn5Wq52fOQRx6+ITyuUyiXSAy2ITJ1ygbF4KtvO9jFEwKTU2ChdZ1JFfwspNdv8
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(396003)(376002)(39840400004)(346002)(366004)(136003)(451199015)(478600001)(31686004)(6486002)(8936002)(83380400001)(86362001)(38100700002)(316002)(31696002)(8676002)(41300700001)(66946007)(66476007)(66556008)(4326008)(2906002)(2616005)(186003)(5660300002)(6512007)(53546011)(36756003)(6506007)(44832011)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?a1IzSjBGRmdrSnpPV3hLZjNVajlMODdCRWt1QzFYdW1lM0thd2RvazRlelZH?=
 =?utf-8?B?VHlXYytaQzFSUDFIRUQrNkh4cVh2WElhNjUvWGRTZko1dmcveUJ2MUVEaHpy?=
 =?utf-8?B?TXFEUzNUcHgveUZ1V1hsaEVCeUIvNG9ZMldydzN5U1pKNXc0STFmbGg0UDJO?=
 =?utf-8?B?dmpSNU1FSTlBTFpWZnd0ekdSMWFNOE1MbFl3SGY3QldaQ0dTTTJoU2FNZWFG?=
 =?utf-8?B?WW94aEN0SndaclpwK3Q4SlZmMlNXZnpsY1FxVVpRTDh2OHg3c2gvVm1tVlhE?=
 =?utf-8?B?a2tsZlJrb1loMHN1ZStOYXZxWnp2c0MrT1BLUXdRaUZtMzdqemlPN09LRng4?=
 =?utf-8?B?bFFtVmp2RmJLWVhvaTRhT2V4aVZSa2hJelZVMkJnNGN2N3V6UjFDZGlBSFBj?=
 =?utf-8?B?emlIK2wyR1VRaVlIT0JkMDdMMnFlRTV1cEg5N2tFL0V4bmJLRlYzbUtqeUpF?=
 =?utf-8?B?NHhLZHhCaW04UmQ4dmlON01yNGVpY2NxZ0tZZ21tVm05L2p0aUhRbTl5ZG5l?=
 =?utf-8?B?UVdEL3pqekpjZEZnMmhOZFJQZHhtRUg4Tnp5aXBWTzVYbGUrQ29Wam82U2xC?=
 =?utf-8?B?S2FCMXA1c3VjeHE1YnZ1NytJSk81N2ZLVWwxZG5Yd0hhYjEweHd2aGRBNnlq?=
 =?utf-8?B?WGJ5dVlEOUJxbVNLY2F6ZTNJZytyMnRMZ0pidC9wTkRqSkpSZW1hTk5BWUpJ?=
 =?utf-8?B?OHc1WmN2ZXpGTCt3NmZoZDJYS2RvanNVUTBtQ0kyTHNleEh0VGsxWFp0NmJS?=
 =?utf-8?B?QVVMb1NqTE1zS0R3VEx3b09zS1FMbk1qZVpwQ0wxSmxvNk9BTHhvYlNYQmda?=
 =?utf-8?B?MFR5N0lJcU4xZ215ZFVJUjFWdzBvc05xR0RjUEVTcjJaZkNib1RhaEMwMlhG?=
 =?utf-8?B?a1g0M0QwNmNDQTJLd0VEN2JxeU8zakluanRRY3BQOXpLaVRpRWpvN2Uxdldp?=
 =?utf-8?B?YUJtN1dOdndLSmdpME8zRXlNMDF5eFVKVFNaeHZaNlpPZ05XMFZMUE1YeHZF?=
 =?utf-8?B?UWVxajZmNjJhYXloaDlmenhDUUpVcFJ1cVk3ZXcrbll5VTRYcFIxN2lYU2NF?=
 =?utf-8?B?MjgydEtCTjJUbVdwN0pOMG0zR3VGcExuK0NIcXY1eUl3RkpOTHdYcUxOZ2Ew?=
 =?utf-8?B?UUFnc1lYMFBxWG9CRXZXZUp0RWlLWDF3MWRtdDFHWktCRHhwM2RKMEF6ZTQ4?=
 =?utf-8?B?SWQvUlZvd1JycHlVUXE1RjJhSWNERFdaVzdWS1ZMSElva2oyVUhmUUcrM1dw?=
 =?utf-8?B?SGhuQzRoUlV0VTVaZGp2NlFieDMvUldaalJvWVFtMWFYOHNvL1lVN3lSdUhj?=
 =?utf-8?B?VVNvUWdRS0QyZFBBSHV3MXJERDBRcTBwSGlReHBSVkw3a3E3Sk44VE1jZjRj?=
 =?utf-8?B?Q08ySHhKWm1CVWF5ZHJlMW9tNW5MbFRJYzFxUDd1TWhkVjJzQjVJT3NtYkoy?=
 =?utf-8?B?d0hHSHI5SnZiM1JNSFcvb0lRRFVxQlpTd294SFk0cFVXODZ0d3l6SFgvZmY0?=
 =?utf-8?B?UlNhK29lR0ZCU3BwWUxVQ2I4THplSUdMY1YvQnJVOHhwN211WlpxbUVIYk5I?=
 =?utf-8?B?TDkvQ2Nkc1FscnVKRld1UU5iTDB2Q1lHSmNVZmw3anNPM1k2L0VNSzVRbHpU?=
 =?utf-8?B?VTFNWm03UEtXNDhTYVVuZS9qVFA0d1BGMitzUlpTMThTcUI2SVVHNllWTDg4?=
 =?utf-8?B?UUpjTEl2SUQ0d0ZDbFVGZklQVS93eERlamc3QUkrRXN5aHh3MWRublRUeG1l?=
 =?utf-8?B?TTQvelBycnF5K3hzZ3Z1UDMzdUY3enhpS1BSYnRqWW5iQ0NMWFhGWmdJd01I?=
 =?utf-8?B?Z1BKNjJ0bkoxMm81T1B2ZDBycjRzZHVvYzlrVml1L094WnRBZEZibWVVQzdI?=
 =?utf-8?B?ajhCMmRXV1NwS0tvekFKVEJuWXR3MkhnalhjQ2ZpL1JqbnZPdGp2WlNDUTRO?=
 =?utf-8?B?bHpraTF0ME04ZXFGY1phVHQvQmJRSWQ4WU5zVFo4eFVuQ2VHMzF4VVdFb0p5?=
 =?utf-8?B?eEowa2NIcThEWHJ1cUZ4aFV0OVVrM0VoZ3VjNDdwTDBSVnZ1aWFaS3crRjB6?=
 =?utf-8?B?VE54RUpLMDRKNU5XMnZwQjZPenA5Zm1xUU5IL0VKMmRJZVFrei9XVEYzRFov?=
 =?utf-8?B?TWxxN1RXUHFDd2tuQVVTMDdzYWRmeHNJMTBNcUdIVmVjK1NPcVZhdGFVTUFF?=
 =?utf-8?B?dFJiOTJrNFRmY1gxczAxOUprZnhFOXQvVW9mNzc1TEkyWnd2WThvVmZwd0V5?=
 =?utf-8?B?dEtla0ZBbjR6cjNqR2xVUWJ3NGJnPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0783703f-c0e5-4970-ca8c-08dab834892a
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2022 16:01:40.8876
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aN64cQT5GISMF7ReJ2XRw6ITJYSNub+8izJMWfNRJAYJhOdb3f5NaFwPSB7VV2xOurdgf06tRsTW7loml2b7d7FQ/mJ6/3RulQo2PuH8HGZYXDNz2RMAJcLPZ9k3B+Yv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6919
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Oct 2022 16:01:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58425

Hi all,

Gentle ping.

Cheers,
Quentin

On 10/13/22 14:17, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> It happened that the git repositories were dirty and resulted in
> incorrect files being used. Let's use git clean -ffdx to force a
> completely clean git repositories before and after checking out a branch
> so that nothing is left from or to another branch build. Also git reset
> --hard to undo changes to tracked files.
> 
> Cc: Quentin Schulz <foss+yocto@0leil.net>
> Reported-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com> #https://urldefense.proofpoint.com/v2/url?u=https-3A__lore.kernel.org_yocto-2Ddocs_e50abe3c777e4a23a752a3ec25ad0b2a-40axis.com_&d=DwIDAg&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=sjcVZJ-k5ISKZ9bP1v6Z8e45PceKIzwNAcLdpzaeA2PhyRTTUYU3K1UE3Wsqem3F&s=3-gBIoJfYKyqg6H4LFhHQOPdBGVvSUqi8kFfYVwJWcg&e=
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
> 
> v2:
>   - re-added git reset --hard back,
>   - added git reset --hard after git checkout too just to be on the safe
>   side,
>   - added Reported-by and the link to the discussion,
> 
>   scripts/run-docs-build | 9 +++++++--
>   1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/scripts/run-docs-build b/scripts/run-docs-build
> index c6b3965..970d8bc 100755
> --- a/scripts/run-docs-build
> +++ b/scripts/run-docs-build
> @@ -61,6 +61,8 @@ for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --for
>   
>       echo Building bitbake $branch branch
>       git checkout $branch
> +    git reset --hard
> +    git clean -ffdx
>       git checkout origin/master releases.rst
>       make clean
>       SPHINXOPTS="-j auto" make publish
> @@ -81,6 +83,7 @@ for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --for
>   
>       cp -r ./_build/final/* $outputdir/bitbake/$branch
>       git reset --hard
> +    git clean -ffdx
>   done
>   
>   if [ "$PUBLISH" -ne 0 ]; then
> @@ -101,7 +104,7 @@ git checkout origin/master set_versions.py
>   #latest_tag=$(git tag --contains "$first_sphinx_commit" --contains "$first_dunfell_sphinx_commit" --sort="version:refname" 'yocto-*' | tail -1 | sed 's/yocto-//')
>   latest_tag=$(./set_versions.py getlatest)
>   git reset --hard
> -git clean -f
> +git clean -ffdx
>   
>   for branch in dunfell $(git branch --remote --contains "$first_sphinx_commit" --format '%(refname:lstrip=3)') $(git tag --contains "$first_sphinx_commit" --contains "$first_dunfell_sphinx_commit" 'yocto-*') transition; do
>       if [ "$branch" = "HEAD" ]; then
> @@ -116,6 +119,8 @@ for branch in dunfell $(git branch --remote --contains "$first_sphinx_commit" --
>   
>       echo Building $branch
>       git checkout $branch
> +    git reset --hard
> +    git clean -ffdx
>   
>       if [ -e "${scriptdir}/docs-build-patches/${branch}/" ]; then
>           echo Adding patch for $branch
> @@ -161,7 +166,7 @@ for branch in dunfell $(git branch --remote --contains "$first_sphinx_commit" --
>   
>       cp -r ./_build/final/* $outputdir/$branch
>       git reset --hard
> -    git clean -f
> +    git clean -ffdx
>   done
>   
>   # Update bitbake switchers.js with the copy from master ypdocs

