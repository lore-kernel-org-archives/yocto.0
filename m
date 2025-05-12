Return-Path: <steven.monsees@baesystems.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF500C3ABBC
	for <webhook@archiver.kernel.org>; Mon, 12 May 2025 11:33:04 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.47977.1747049577367058068
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 May 2025 04:32:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.us header.s=trusted001 header.b=bASdu8jL;
 dkim=pass header.i=@baesystemsus.onmicrosoft.us header.s=selector1-baesystemsus-onmicrosoft-us header.b=ra4NkNZ1;
 spf=pass (domain: baesystems.us, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.us)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.us; i=@baesystems.us; q=dns/txt;
  s=trusted001; t=1747049577; x=1778585577;
  h=from:to:subject:date:message-id:mime-version;
  bh=IyPY+3M++V/JDDkHQ4ouGni8iq4U+t4hlOpo8py7P34=;
  b=bASdu8jLO/k/aWdHQW4puS0hf4C2+UFEE3XoOLBbobxo78OCMkIMR9fk
   UU8906ibNosWa2zVBMiwq0NQ0A7rYCB/POyLpmBsJXM98F29mT9R/itce
   hJNDZsjwdrZmR71YObXxRdxA2T0f3SuEkhI+Y3u5BdU4Giks7pEMyXkVw
   S7R4rXVOkKyuVCEXPLFG5xuqt7eleXl0gj+sMSYrQDfHhj4WmQVmkyRlx
   +nFHlTHMQ5e2IOAbad+rpVQTH2FqFc4qlT9do/8udmpk0CDTJHXcGVn8/
   Pa2az+X0bZPS5UqnAtMpEWfbLQyZrfm6y3cNZd9J8o6Wh2xaxioPZ4fSl
   g==;
X-IPAS-Result: =?us-ascii?q?A2CkBAC22yFo/wFUSQpaHgEBCxIMQAmBPwuBQYEDPz+BZ?=
 =?us-ascii?q?R2zFoErgX4PAQEBAQEBAQEBBwEBUQQBAYUHAotKJzYHDgECBAEBAQEDAgMBA?=
 =?us-ascii?q?QEBAQEQAQEGAQEBAQEBBgUBgSCFNUYBDIJbhDMTAQE4EQEVaiYBBBuCe4IcB?=
 =?us-ascii?q?gRFsWSBNBoCZYIMAQEGBATdfwkJAYE/gWqGTBoBKkhrhA8bHYZLQ4FXgmiFA?=
 =?us-ascii?q?4QTgi+CMUQ+FB2RVoxpgUciAyYzLAFVExcLBwWBaQMqNDFuMx2CDYUZghGLD?=
 =?us-ascii?q?IRKK0+FIoEkggdAAwsbITE9NxQbBQSBNZUwHD2HEZQLsyMHA4JkgTeKdpcNF?=
 =?us-ascii?q?5dyA5JlmQAiozqFLgIEAgQFAhAIgW4IggaBAoMlUhmOMIwAvGt4PAIHCwEBA?=
 =?us-ascii?q?wmQPiyBHQEB?=
IronPort-PHdr: A9a23:sGtvYxxh9LS40HTXCzIizVBlVkEcU1XcAAcZ59Idhq5Udez7ptK+Z
 xaZva0m1weQBN6TwskHotSVmpijY1BI2YyGvnEGfc4EfD4+ouJSoTYdBtWYA1bwNv/gYn9yN
 s1DUFh44yPzahANS47xaFLIv3K98yMZFAnhOgppPOT1HZPZg9iq2+yo9JDebRtEiCChbb9uI
 xm7oxndutQLjYZsN6081gbHrnxUdutZwm9lOUidkxHg6Mmu4ZVt6T5Qu/Uv985BVaX1YaE1R
 qFGATolLm44+tTluQHMQgWT6HQcVH4WkgdTDAje8B76RJbxvTDkued7xSKXINf5TbEwWTSl8
 qdrVBrlgzoJOjIl7G3ajNF7gaRGqxyjuhN/2ZbZboGLOvRjYqPTc9AUSnZOUctKTSNNHp+wY
 pETA+YdI+pVqZT2qVsUrRu5AAmhHO3jxDhPhn/wxq01zfouERrD0wA4AtkArWjUo8vrNKgMV
 +C+0bfFxijHY/xYxDnx7YbEeQ0mrPGXQbJ/b9TRxlcpFw/fi1WQrorlPyiL2esTqGiW9PFvW
 vixhG48qwBxuSSvydkpionSnI4V10vE+Dx/zY0oKtK2VFR1bsS4EJtMqS6aLY12T9shTmxst
 ys3y7wLtJylcCUL1ZkqxR3SZ+CFfoWU4x/vSvqdLDVkiXxqZr6yiQu+/Eu8x+DiWMS5zFdHo
 jRbntTRsH0Gyh/d6tCfR/dg4kutwzSC2g7J5uxHLk04j7fXJ4Y/zrIsipYfrEHOEyD1lUjyl
 qCbc1so9vS05+nif7nrpYSTOopxhw3jM6kjnNG0DPo8MggTRGib5fqz1Kf+8034QbRFkOU7n
 rXfvZvHP8oUvLS5DBVQ0os77ha/CCqp38oAkHkcKVJFZAqHj4/0O1HSOPz4Demwg1CrkDpz2
 /DHMafuApPILnjYlLrtYapx51JBxAYp0NBf/IhYBaobL/3tQU/wtMfYDgMnPAyx2ObrEsly1
 oQbWW6XA6+ZNr3dsUOQ6+4yP+WAfo0YtTjnJ/Um6PPil2I1lUcYfaaz3JsXbH64Hu5hI0Wce
 XfsmcsBHnkUvgUgSuzmkliCUTlVZ3apQa0z+Co7BZm9AojZWI+tm7yA3DynHpJIY2BGEUqAE
 Wrzd4mcXfcDczqdItV9nTwcSbihV4gh2AmzuAPi0bpoMvLU+jEEtZLkzNV05+rTmg0u9TxzF
 Mmd12CNT3ponmMTXTM33Kd/rlBhyleEyah4mftYFd5N6PxVTgc2L5ncz/Z1C4O6ZgWUNMaOQ
 0qhatGnGi0qCMM2yMMJe1x6GdipklbExSXgS+sEkLeXA7Qw87nAxD7gIM1hzG7c06sshEVgR
 dFAYz6InKl6okL2AIjSnkiC0+6RaakC0SiF3y/D8FHP9gkMSxJ9T6jDG3UYYFDboM/R7ErPV
 K61FbkiKU1c0pjReeNxdtT1gAAeF7/YM9PEbjfp84/4LRqLx7bZao3sdi1d2SjGE0ELnkgV+
 mrOLgkxACqt4ge8RDxjHF7ieQXgpO95rn7oQko91QrfaUpn2vK88QIUgvrJTfQV0/oEtS4tp
 i8yEky62ofcAtebthF9caBHJ84msz96
IronPort-Data: A9a23:7x8OL6C1L9sHchVW/4Phw5YqxClBgxIJ4kV8jS/XYbTApG4q1jQBz
 WseXWvSM6zcMWD8Ld9+aYW3pEgP7ZTcy9BjOVdlrnsFo1CmCSbm6XZ1Cm+qYkt+++WaFBoPA
 /02M4WGdoZuJpPljk/FGqD7qnVh3r2/SLP5CerVUgh8XgYMpB0J0HqPoMZnxNc16TSFK1nV4
 46q/pSFYAbNNwNcawr41YrS8HuDg9yv4Fv0jnRmDdhXsVnXkWUiDZ53Dcld+FOhH+G4tsbjL
 wry5OnRElHxpn/BOfv5+lrPSXDmd5aJVeS4Ztu6bID56vRKjnRaPq/Wr5PwY28P49mCt4gZJ
 NmgKfVcRC9xVpAgltjxXDFUAh8vbfNrwITXIHzirPG543KFd2fFlqAG4EEeZeX0+85rEWhI8
 OdJcGhVN1aenKS8yb+gW/Jwi8E4asLsOevzuFk5lXeGVrB2HdaaK0nJzYYwMDMYndxDA/vYI
 c8ebyFiYQ/oaRRCIUYMFJ87h6G1nRETdhUD8gvF+fNpuze7IApZ/IHEIYPeJ8ywHpsKgB7fu
 kLX302pO0RPXDCY4X/fmp62vcfemijnX6oWFaak7bh7h1aPwXQJDx8bXkf9puO24nNSQPoGc
 wpLoWx+8e5rnKC2cuTAs9SDiCbslnYhtxB4SoXWNCnlJnLo3juk
IronPort-HdrOrdr: A9a23:WKnw6qgmrdI1KjQED9PIjDxuf3BQXrMji2hC6mlwRA09TyX4ra
 6TdZggviMc6wx/ZJhDo7290cC7KBvhHPVOjbX5U43JYDXb
X-Talos-CUID: 9a23:+0gEb2FJcpfQKAEBqmJr5XBFSp4ISkbNzXONPnKSJVkqTKG8HAo=
X-Talos-MUID: 9a23:VJNMLApNZ+SLXNDiOx4ezx1bHdYx6Pm+MhtTzote/NWkJAxZaw7I2Q==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.15,282,1739836800"; 
   d="scan'208,217";a="321841607"
X-IronPort-AV: E=Sophos;i="6.15,282,1739836800"; 
   d="scan'208,217";a="32183420"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=NSsWTtxVZU+oIVHUOc7qOQjwlHiSPs1umJWbHFlVA9MHNV2CSoqFOjn4gnEKj4umP310uxqI1QT+35v3IiKpXKEAdziUO/CBWafTT8zdavba87oHxW9eljT5rUoIuLb6AJd9jTGhMX2eQrOVl07IS8hC6LLb7V1pP/ThDGkeGASzmSwZn4Xvm8RNJqjnWhoWPV0cxvsq9nO4pmE3E5Foxco+6duJklaUoO65V3vlLDN3OvnyAEzRgdqhI6RG/GJztQjwBbLdUf/aiIraAbMfUa77D/5ITAoSedGhDMa4m98zX8Z3L2s5Qd0dHcQ6E+zzNwy1Q1mukf2cbhafsZFzBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8G5pL8utTJDqHnr19TtHiT0K8hEIleaxUR2fyC/qUEg=;
 b=eu2zR8VwgSopAINhEKZ840EwKzNGaRXAFfSgxLJWmhng6oLd3hP07lOsJ+v7wBLlEI04JoI30jq1UE5VbYuTgh5TrmSunGmS0mzgksLpK9PvcN1q6tr2ecb4v2erGC+r2MdMoD6fQ/kZfM6pvrtns/J9Xi//+Li1XQLHbU9O3V+5jv7ihE/lcfoNn82JKHlqs1qH4ar5W63+gjvw/YR61XG45Ghx1wFfYBLL/YrlqCD0zh94S20eUpOaxBcG8tMjukmyjh7v1FiC5WWChhvyoIihf8I5i96raCKSCZkx2BurR8xl2xHNwGycoK3VKdOiSmWufZ/aj/p2cEy4d6Y+sA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=baesystems.us; dmarc=pass action=none
 header.from=baesystems.us; dkim=pass header.d=baesystems.us; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baesystemsus.onmicrosoft.us; s=selector1-baesystemsus-onmicrosoft-us;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8G5pL8utTJDqHnr19TtHiT0K8hEIleaxUR2fyC/qUEg=;
 b=ra4NkNZ16NlOQ9/g4P9L/uW7M73oQ78fY8ja7vBZXFnqEQgFYj3FAf38ymYXj6o8G13uy7kJP8oQqoeL6+cPecolezO4EkqvI5xZRoejxU0EnSlQPIdRrlUqLzMdjB7f2h9l4JsMdd55eu+e+fqzC5dJ2inY2r/Jq1Cjpqd1TJqnjbzH4BOPBqGrycDs1jp/vTjM/o9RN8DCqGH6VTyHA/17emtRNh9eCQykejHToSs2brTild0EoG4zVhel0HZMCGHpgX0IYQncTj1OaLXRnGBn6mvFdyTPmJYxSgLK/TZZ3G3Oj950X23JcCtSXpOpqHGnx82idukKcC2B2iuyZQ==
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.us>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Release 5.0 LTS(Scarthgap)
Thread-Topic: Release 5.0 LTS(Scarthgap)
Thread-Index: AdvDL0CUIezLVZXtTGCx3CIyslfqyQ==
Date: Mon, 12 May 2025 11:31:51 +0000
Message-ID: <PH1P110MB1683BE97556B7C84A7FE68459F97A@PH1P110MB1683.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=baesystems.us;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH1P110MB1683:EE_|BN2P110MB1397:EE_
x-ms-office365-filtering-correlation-id: f8356daf-547b-41c8-9f12-08dd91489758
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|8096899003|38070700018|80162021;
x-microsoft-antispam-message-info: =?us-ascii?Q?y4jEqVmL2vzdKLyBIG8t6gaLAb/pwPykC7+K/5thDGPSWZuUNni6tSaTuWnn?=
 =?us-ascii?Q?CFZxGIOSpPpa5VVc3LY2o5CFr6EV9GodarslNe33h9/sk4Bk4ak9pfKibDV2?=
 =?us-ascii?Q?9MNReZkFvz/+t4WRzkeWOSBW9SkRp9+wNMXNLhV7rAUPNylkgbS/kFKA9FQ5?=
 =?us-ascii?Q?5m1H4+3Q6kwzdFu7KnueoZy3jipuTL3tvdMfkpJuVVH7+9t0BOAlrT1AdDH/?=
 =?us-ascii?Q?90L5zntnr5ZqIC007bb8rb5ZreTKCHyM00QJ6N27PaqXcAES0x43fDkoU+lb?=
 =?us-ascii?Q?2G6oJJErDfU9CeWyu3KEPXdEIxJElsZAoapQd1wh01iTgynSFte7stfU7tVA?=
 =?us-ascii?Q?bkggtjWizBJSTM2Xm8abKbVONTCCFcAm7ghrW5Aw3GYk0st8GExurLXygkTL?=
 =?us-ascii?Q?ogAlNuW/syeICPcnT9fYyVsYe3MVm5OLKvM12WDd/m+jhwZsTgyCoNQKnJ6y?=
 =?us-ascii?Q?wIDHKkh2UWHwhW4t5eSyznUZUzj11AKS4qcNFM5tssS7veGwMDMupdKaRPCz?=
 =?us-ascii?Q?ITpK+bgLYSbx0kLJ6obenFIIKYSH6DJ4ACs+3U93dMDP8b0yfN+6pDo6oF5j?=
 =?us-ascii?Q?owbvMIV3Qh9wELFFMlT84nd/GMcHCBdyU9rMO7F1Et9Kqj/kS6mL3B7+pP09?=
 =?us-ascii?Q?kaI79l69BQ+kThbx7v+wXM9VpfamdQiWv7xYdaeXmWAyoKDdezhfA/Me/gyI?=
 =?us-ascii?Q?YAv7rx329Kw0rS+GSasxeDSZ4PIsc+E/E+u6uQ32rBAM2Ay+U9ozb57DhWOX?=
 =?us-ascii?Q?VNxvXCLXipcmtazwO2LM9QbkrJrLUtEwChLzHeyyAd1Qx2RnpdSAEfuXwYs1?=
 =?us-ascii?Q?HcnOC2pWGBPMWLWdsiMdKEmF1opTfDMta7xCNV3/uAeNmqRaCuAusbP10t2j?=
 =?us-ascii?Q?wezuOS08vIU16fz1OVu0K9ODZbX/U3MrL4gbYVMa1IqgdzUXCKYVZbLxeRWh?=
 =?us-ascii?Q?0ZN9/VnMuXFyNSRBAROkrd5+vmD7/LWRAHZCmw8gI5cepGAFtrETR1EtjHg9?=
 =?us-ascii?Q?jHSQEJrAK64cvw1mwjSCV8rCMSNEC1U2v1rjJ73XR+1Oq3sbA5k4XgxYXuW3?=
 =?us-ascii?Q?GgD2eKWEj8weEUU7Ms7skmagQvgw6z1vi+v33OrAynIPfuLZaoVRZyZ8fzWI?=
 =?us-ascii?Q?TlPV/lUvQ9uwYG+k4sG+FhuZs2mEKJCeAYfxsVQMTGM0Igs1GzPJ+ftSddN3?=
 =?us-ascii?Q?xHGdbiUlPb6A4Pki6DHIVaoYQF2chUpuEnchbRR+558j9ICmPB6l9PINA8XU?=
 =?us-ascii?Q?nxv/U3EHy2NA8ZCpbIWijcIZBfWjvt7QBIa1wE2kYU9Rd86SGn5fUDoNtr7+?=
 =?us-ascii?Q?/01a4Lvh60nba9/uWlEhXAyEHLSvh04zGFllhf7nidg2ac4zfQsrp5+F3KhP?=
 =?us-ascii?Q?lOwsj/j3vhKO3QUgagfca+k2wCilqnoRIXzmTir/B9XEPRBmnQ/T0rQAUY8g?=
 =?us-ascii?Q?lCHwVfPQtoBK+zNuh+5e+BFkBtKGkBy3YfX1g/83HK+x3bAs4rBtyo9pFeEh?=
 =?us-ascii?Q?rbqLOROta/0z5lw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1683.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(8096899003)(38070700018)(80162021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/xUMPj5Ayuwn0cuhCDWLK8iKkMQOJk8bohD8ZTZVmwf9CQD6MGpoMuc5NOrV?=
 =?us-ascii?Q?pnLmsQ80CtD5DlxcBbYACF92+bFzJkZI4SypEOxcNTBZTSeUqpC45fNQhtEM?=
 =?us-ascii?Q?/7SncGew4i3nL4HnlPX5eoxVZltLQU9kJ8P/otlxRTLfZddcQKd+JXXd8zNS?=
 =?us-ascii?Q?2O1WN+UHoNTmE67vB7JK9aXGC+gMGM6khd0o83X1vDhRjakvgW6PH7BgE1tr?=
 =?us-ascii?Q?P3rea7OqseSJh4CJtQKU08HLx5rWcwYNplSVAOBlkVY7A3H6UJVqRPCw2S3S?=
 =?us-ascii?Q?lPDgTORB8QoMSIbEo9lzea/Boj359Pbl7MYdJNEDRdngIJcT0pOmPwc4u8fJ?=
 =?us-ascii?Q?z6LiPP8ZpBcs8HsL+6vAQUkKeqypzJjDlKvhJKFUdH+UiEPwWNrjwhLDqeXK?=
 =?us-ascii?Q?fMEuFowr59jVtM+wefwfepKNz4CdJYqbs8A2q8Uczr7cukssoDdA6uXqfOOZ?=
 =?us-ascii?Q?bR2Cs+2wI1VivFDSgvhH8jV76BMBkqUXViT2m/XzMOsobb8LwOzEWsF7VTcF?=
 =?us-ascii?Q?164R4jEBsX4nus3fVuXS5HoOSnRlRNPKQW64RWDZ4S9LaEwPLC9SZq9p99d4?=
 =?us-ascii?Q?V1bHGccl+/ra/c9jQjX7VVBHSDbZSyVbXHgN/ea21DzxSlHceM59FZr5cZo7?=
 =?us-ascii?Q?sfj7xy6hcGxbpBq4YWIrACBCc0fkdobrl4jK6kbocPbPXVVLOawIa7qqs9WK?=
 =?us-ascii?Q?jp6ecmZA/wxy4Com16IHwDBTclAx+35RFvuyHOnITBvRPUO1kD81NTfEwwFe?=
 =?us-ascii?Q?v1wfOvy+pRP91HxPmf29OiMUQFW4vlbNCzXLi5DBfKpauSR9+pwBtdNnOhDv?=
 =?us-ascii?Q?p6t3WiEdgiHqCJXFdu1qMYNeBYaM+VOiJUBPv1njnuR5ZLwvKFkeGxPJUHrt?=
 =?us-ascii?Q?TnoiqDOPAzaDJkrVzlwFfSRISRzpzvxwb7Rtipu+8X4BwYsY0fPBjkWRMjBU?=
 =?us-ascii?Q?eaYOYfQvzpEtKnVW6i1YNbfH38DGaHE4cikaTbP9w+1s2K46DBs7JxRrf3aL?=
 =?us-ascii?Q?vwBCdq/Qd5k1MB9J8B49uaMNmDeKb+X9tInU3l14ifdyaFcbQ9jDOzbB8lZZ?=
 =?us-ascii?Q?lakPJa4XGieDu3IO7DeFao9JiHfVzbnX2eYn/YwyZuf1bD/LccFC/h7Uq+5d?=
 =?us-ascii?Q?hi7wCJ+G1jehhRZkCmXUabsI/d5WR6kzp68L1NmHk0i+uMt3+siHHm4g/BAa?=
 =?us-ascii?Q?bytVp/8kq0LOdG/ud3lsNhD9v1XXO0k0jyCyLOcjgxHxAxvaOUZtrCj9Rkg3?=
 =?us-ascii?Q?B/3+MfxWZwS3+ZUN0BiF4ioz+YCUsNjO4DbzyX8m19CaSccY83cbOWY8+zO4?=
 =?us-ascii?Q?D52TTd8mIrqs8CsoKNTPaiBVZjDnIqQFN5dHZnXLvx0CqZ4Ez7ejorbsY3ul?=
 =?us-ascii?Q?xlqNd+77xdw5pWX8N6qWL5FQ21e8FjN39q5CLrPP3zOUqZig+Wd+2a8z+jep?=
 =?us-ascii?Q?jxCSxVxnSp0A6L5301iiT9iOdaDzvmal1tCEXwhgM4PXkDDVH+Fl4up5KzWC?=
 =?us-ascii?Q?E6Z+9UkR9gP1r4AMeABf0U5iiEZkyXZf+fgA?=
Content-Type: multipart/alternative;
	boundary="_000_PH1P110MB1683BE97556B7C84A7FE68459F97APH1P110MB1683NAMP_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1683.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f8356daf-547b-41c8-9f12-08dd91489758
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2025 11:31:51.9041
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 03b86c3a-8954-4d19-9522-e464fe9f22ce
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1397
X-OriginatorOrg: baesystems.us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 May 2025 11:33:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65313

--_000_PH1P110MB1683BE97556B7C84A7FE68459F97APH1P110MB1683NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hello:

I am currently running Yocto Zeus, but am looking to jump to LTS Release 5.=
0 (scarthgap)...

After looking at the migration guide, there appear to be 7 releases listed,=
 beginning with Release 3.2 ( gatesgarth) and ending with Release 4.3 (nanb=
ield).
So, this means I would first need to port to Release 3.2 (gatesgarth), perf=
orm the 7 in mentioned in the Release 5.0 LTS(Scarthgap), and then a a fina=
l port from Release 4.3 (nanbield to Release 5.0 LTS(Scarthgap).

Is this considered the recommended way ?

Also, is there a porting guide to go from Zeus to Release 3.2 (gatesgarth) =
?

Thanks,
Steve

--_000_PH1P110MB1683BE97556B7C84A7FE68459F97APH1P110MB1683NAMP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">Hello:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">I am currently running Yocto Zeus, but am looking to jump to LTS Rel=
ease 5.0 (scarthgap)&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">After looking at the migration guide, there appear to be 7 releases =
listed, beginning with Release 3.2 ( gatesgarth) and ending with Release 4.=
3 (nanbield).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">So, this means I would first need to port to Release 3.2 (gatesgarth=
), perform the 7 in mentioned in the Release 5.0 LTS(Scarthgap), and then a=
 a final port from Release 4.3 (nanbield to Release
 5.0 LTS(Scarthgap).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">Is this considered the recommended way ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">Also, is there a porting guide to go from Zeus to Release 3.2 (gates=
garth) ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">Steve<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_PH1P110MB1683BE97556B7C84A7FE68459F97APH1P110MB1683NAMP_--

