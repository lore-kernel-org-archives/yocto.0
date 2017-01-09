Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA83EE006D8; Mon,  9 Jan 2017 12:21:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D0CEE00443
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2017 12:21:29 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga105.fm.intel.com with ESMTP; 09 Jan 2017 12:21:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,341,1477983600"; 
	d="asc'?scan'208";a="1110181142"
Received: from jalamego-mobl2.zpn.intel.com (HELO [10.219.5.138])
	([10.219.5.138])
	by fmsmga002.fm.intel.com with ESMTP; 09 Jan 2017 12:21:28 -0800
To: Khem Raj <raj.khem@gmail.com>
References: <1483714246-6857-1-git-send-email-jose.a.lamego@linux.intel.com>
	<CAMKF1srB=LYj8_Zp+xQu-dnC74QygMuU08jrq_fh7X-rB5s2bQ@mail.gmail.com>
From: Jose Lamego <jose.a.lamego@linux.intel.com>
Message-ID: <8a451c7c-4da2-4aca-e6f5-ead626045c27@linux.intel.com>
Date: Mon, 9 Jan 2017 14:21:31 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1srB=LYj8_Zp+xQu-dnC74QygMuU08jrq_fh7X-rB5s2bQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Jose Lamego <jose.a.lamego@intel.com>
Subject: Re: [patchwork][PATCH] patchwork/templates/patchwork/series: Improve series view
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
X-List-Received-Date: Mon, 09 Jan 2017 20:21:33 -0000
X-Groupsio-MsgNum: 33719
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="6wB75Mer5HoHPl8cHOhgXtadSAP2E6Kb5"

--6wB75Mer5HoHPl8cHOhgXtadSAP2E6Kb5
Content-Type: multipart/mixed; boundary="HeGT0vFkabxVgkSikWHkWhhXk4VRmPR3h";
 protected-headers="v1"
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
 Jose Lamego <jose.a.lamego@intel.com>
Message-ID: <8a451c7c-4da2-4aca-e6f5-ead626045c27@linux.intel.com>
Subject: Re: [yocto] [patchwork][PATCH] patchwork/templates/patchwork/series:
 Improve series view
References: <1483714246-6857-1-git-send-email-jose.a.lamego@linux.intel.com>
 <CAMKF1srB=LYj8_Zp+xQu-dnC74QygMuU08jrq_fh7X-rB5s2bQ@mail.gmail.com>
In-Reply-To: <CAMKF1srB=LYj8_Zp+xQu-dnC74QygMuU08jrq_fh7X-rB5s2bQ@mail.gmail.com>

--HeGT0vFkabxVgkSikWHkWhhXk4VRmPR3h
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 01/09/2017 12:44 PM, Khem Raj wrote:
> On Fri, Jan 6, 2017 at 6:50 AM, Jose Lamego
> <jose.a.lamego@linux.intel.com> wrote:
>> From: Jose Lamego <jose.a.lamego@intel.com>
>>
>> Reviewing patches from a series requires heavy usage of the
>> browser navigation buttons, providing a poor UX.
>>
>> This changes allows viewing content from each patch in a series,
>> without leaving the series view.
>>
>=20
> The patch looks fine to me. Are you also posting these to upstream patc=
hwork ?

Thanks for the review Khem. These changes currently are going only to
the Yocto-Patchwork repository [1]. Upstream [2] has been not-maintained
for a while.

You can view a working example of the view in patchwork-staging [3].
Production will be updated soon.

[1] https://git.yoctoproject.org/git/patchwork
[2] https://github.com/dlespiau/patchwork
[3] https://patchwork-staging.openembedded.org
>=20
>> [YOCTO #10627]
>>
>> Signed-off-by: Jose Lamego <jose.a.lamego@intel.com>
>> ---
>>  htdocs/js/series.js                       |  43 +++++++++++
>>  patchwork/templates/patchwork/patch.html  |  15 ++--
>>  patchwork/templates/patchwork/series.html | 114 ++++++++++++++++-----=
---------
>>  3 files changed, 113 insertions(+), 59 deletions(-)
>>  create mode 100644 htdocs/js/series.js
>>
>> diff --git a/htdocs/js/series.js b/htdocs/js/series.js
>> new file mode 100644
>> index 0000000..4f4f477
>> --- /dev/null
>> +++ b/htdocs/js/series.js
>> @@ -0,0 +1,43 @@
>> +$(document).ready(function(){
>> +    $('[data-toggle=3D"tooltip"]').tooltip();
>> +    revTab=3Ddocument.getElementById('revs-list')
>> +    coverView=3Ddocument.getElementById('cover-letter-view'),
>> +    patchView=3Ddocument.getElementById('patch-view'),
>> +    patchList=3Ddocument.getElementById('patches-list')
>> +
>> +    revTab.style.border=3D'none'
>> +    revTab.style.background=3D'transparent'
>> +    revTab.style.padding=3D'15px'
>> +    coverView.style.display=3D'block'
>> +    patchView.style.display=3D'none'
>> +    patchList.style.display=3D'none'
>> +
>> +    document.getElementById('cover-letter-tab').onclick=3Dfunction(){=

>> +        coverView.style.display=3D'block'
>> +        patchView.style.display=3D'none'
>> +        patchList.style.display=3D'none'
>> +    }
>> +
>> +    document.getElementById('patches-tab').onclick=3Dfunction(){
>> +        coverView.style.display=3D'none'
>> +        patchList.style.display=3D'block'
>> +        patchView.style.display=3D"none"
>> +    }
>> +
>> +    $('#revs-list').on('change', function(e){
>> +        var optionSelected=3D$("option:selected", this)
>> +        jQuery('.tab-content div.tab-pane.fade.in.active').
>> +        removeClass(' in active')
>> +        jQuery('.tab-content div#'+this.value+'.tab-pane.fade').
>> +        addClass(' in active')
>> +        patchView.style.display=3D'none'
>> +    })
>> +
>> +    $('.patch-link').on('click', function(){
>> +        coverView.style.display=3D'none'
>> +        patchView.style.display=3D'block'
>> +        patchView.innerHTML=3D
>> +        '<p style=3D"text-align:center;">Loading patch...</p>'
>> +        $("#patch-view").load(this.getAttribute("data-url") + " #patc=
h-body")
>> +    })
>> +})
>> diff --git a/patchwork/templates/patchwork/patch.html b/patchwork/temp=
lates/patchwork/patch.html
>> index 5ce540d..59df19d 100644
>> --- a/patchwork/templates/patchwork/patch.html
>> +++ b/patchwork/templates/patchwork/patch.html
>> @@ -7,6 +7,7 @@
>>  {% block title %}{{patch.name}}{% endblock %}
>>
>>  {% block body %}
>> +
>>  <script type=3D"text/javascript">
>>  function toggle_headers(link_id, headers_id)
>>  {
>> @@ -25,10 +26,12 @@ function toggle_headers(link_id, headers_id)
>>
>>  }
>>  </script>
>> -
>> +<div id=3D"patch-body">
>>  <h1>{{ patch.name }}</h1>
>>  <div class=3D"core-info">
>>      <span>Submitted by {{ patch.submitter|personify:project }} on {{ =
patch.date }}</span>
>> +    <span>|</span>
>> +    <span>Patch ID: <strong>{{ patch.id }}</strong></span>
>>  </div>
>>
>>  <h2>Details</h2>
>> @@ -134,10 +137,10 @@ function toggle_headers(link_id, headers_id)
>>        <form method=3D"post">
>>         {% csrf_token %}
>>         <input type=3D"hidden" name=3D"action" value=3D"addtobundle"/>=

>> -       <select name=3D"bundle_id"/>
>> -        {% for bundle in bundles %}
>> -         <option value=3D"{{bundle.id}}">{{bundle.name}}</option>
>> -        {% endfor %}
>> +        <select name=3D"bundle_id">
>> +         {% for bundle in bundles %}
>> +          <option value=3D"{{bundle.id}}">{{bundle.name}}</option>
>> +         {% endfor %}
>>          </select>
>>         <input value=3D"Add" type=3D"submit"/>
>>        </form>
>> @@ -219,5 +222,5 @@ function toggle_headers(link_id, headers_id)
>>  </pre>
>>  </div>
>>  {% endfor %}
>> -
>> +</div>
>>  {% endblock %}
>> diff --git a/patchwork/templates/patchwork/series.html b/patchwork/tem=
plates/patchwork/series.html
>> index c0a5261..6c35212 100644
>> --- a/patchwork/templates/patchwork/series.html
>> +++ b/patchwork/templates/patchwork/series.html
>> @@ -1,6 +1,7 @@
>>  {% extends "base.html" %}
>>
>>  {% load person %}
>> +{% load static %}
>>
>>  {% block title %}{{project.name}}{% endblock %}
>>  {% block headers %}
>> @@ -9,64 +10,70 @@ $(function () {
>>      pw.setup_series({ patches: 'series-patchlist' });
>>  });
>>  </script>
>> +<script type=3D"text/javascript" src=3D"{% static "js/series.js" %}">=
</script>
>>  {% endblock %}
>>
>>  {% block body %}
>> -<h1>{{ series.name }}</h1>
>> -
>> -<div class=3D"core-info">
>> -  <span>Submitted by {{ series.submitter|personify:project }} on {{ s=
eries.submitted }}</span>
>> -</div>
>> -
>> -<h2>Details</h2>
>> +  <h1>{{ series.name }}</h1>
>> +
>> +  <div class=3D"core-info">
>> +    <span data-toggle=3D"tooltip" title=3D"View all patches submitted=
 by this user">Submitted by {{ series.submitter|personify:project }} on {=
{ series.submitted }}</span>
>> +    <span>|</span>
>> +    <span>Reviewer: {{ series.reviewer }}</span>
>> +    <span>|</span>
>> +    <span>Updated on: {{ series.last_updated }}</span>
>> +    <span>|</span>
>> +    <span>Series ID: <strong>{{ series.pk }}</strong></span>
>> +  </div>
>>
>> -<table class=3D"patchmeta">
>> -  <tr>
>> -    <th>Reviewer</th>
>> -{% if series.reviewer %}
>> -    <td>{{ series.reviewer.name }}</td>
>> -{% else %}
>> -    <td><em class=3D"text-muted">None</em></td>
>> -{% endif %}
>> -  </tr>
>> -  <tr>
>> -    <th>Submitted</th>
>> -    <td>{{ series.submitted }}</td>
>> -  </tr>
>> -  <tr>
>> -    <th>Last Updated</th>
>> -    <td>{{ series.last_updated }}</td>
>> -  </tr>
>> -  <tr>
>> -    <th>Revision</th>
>> -    <td>{{ series.last_revision.version }}</td>
>> -  </tr>
>> -</table>
>> +  <nav class=3D"navbar navbar-default" role=3D"navigation" id=3D"seri=
es-navigation">
>> +    <div class=3D"container-fluid">
>> +      <div class=3D"navbar-header">
>> +        <button type=3D"button" class=3D"navbar-toggle collapsed" dat=
a-toggle=3D"collapse" data-target=3D"#navbar-collapse2">
>> +          <span class=3D"sr-only">Toggle navigation</span>
>> +          <span class=3D"icon-bar"></span>
>> +          <span class=3D"icon-bar"></span>
>> +          <span class=3D"icon-bar"></span>
>> +        </button>
>> +      </div>
>> +      <div class=3D"collapse navbar-collapse" id=3D"navbar-collapse2"=
>
>> +        <ul class=3D"nav navbar-nav">
>> +          <li>
>> +            <select id=3D"revs-list" data-toggle=3D"tooltip" title=3D=
"Select a Series Revision">
>> +              {% for revision in revisions %}
>> +                <option {% if forloop.last %}selected=3D"selected"{%e=
ndif%} value=3D'rev{{ revision.version }}'>
>> +                  Revision <strong>{{ revision.version }}</strong>
>> +                </option>
>> +              {% endfor %}
>> +            </select>
>> +          </li>
>> +          <li id=3D"cover-letter-tab">
>> +            <a href=3D"#" data-toggle=3D"tooltip" title=3D"View the C=
over Letter if available">Cover letter</a>
>> +          </li>
>> +          <li id=3D"patches-tab">
>> +            <a href=3D"#" data-toggle=3D"tooltip" title=3D"List patch=
es from selected revision">
>> +              Patches ({{ series.latest_revision.n_patches }})
>> +            </a>
>> +          </li>
>> +        </ul>
>> +      </div>
>> +    </div>
>> +  </nav>
>>
>> +  <div id=3D"cover-letter-view">
>>  {% if cover_letter %}
>> -<h2>Cover Letter</h2>
>> -
>> -<div class=3D"comment">
>> -  <pre class=3D"content">
>> -{{ cover_letter }}
>> -  </pre>
>> -</div>
>> -
>> +  <h2>Cover Letter</h2>
>> +  <div class=3D"comment">
>> +    <pre class=3D"content">
>> +      {{ cover_letter }}
>> +    </pre>
>> +  </div>
>> +{% else %}
>> +  <h2 style=3D"color:#909090">No cover letter was found for this seri=
es.</h2>
>>  {% endif %}
>> +  </div>
>>
>> -<h2>Revisions</h2>
>> -
>> -<div>
>> -
>> -  <ul class=3D"nav nav-pills small-pills" data-tabs=3D"tabs" role=3D"=
tablist">
>> -{% for revision in revisions %}
>> -    <li role=3D"presentation"{% if forloop.last %} class=3D"active"{%=
endif%}>
>> -      <a data-toggle=3D"pill" href=3D"#rev{{ revision.version }}">rev=
 {{ revision.version }}</a>
>> -    </li>
>> -{% endfor %}
>> -  </ul>
>> -
>> -  <div class=3D"tab-content">
>> +  <div class=3D"tab-content" id=3D"patches-list">
>>  {% for revision in revisions %}
>>      <div role=3D"tabpanel" id=3D"rev{{ revision.version }}"
>>           class=3D"tab-pane fade{% if forloop.last %} in active{% endi=
f %}">
>> @@ -87,8 +94,7 @@ $(function () {
>>          {% for patch in revision.patch_list %}
>>              <tr>
>>                <td></td>
>> -              <td><a href=3D"{% url 'patchwork.views.patch.patch' pat=
ch_id=3Dpatch.id %}"
>> -                >{{ patch.name|default:"[no subject]"|truncatechars:1=
00 }}</a></td>
>> +              <td><a href=3D"#" class=3D"patch-link" data-toggle=3D"t=
ooltip" title=3D"Click to view the patch at bottom section"data-url=3D"{%=
 url 'patchwork.views.patch.patch' patch_id=3Dpatch.id %}">{{ patch.name|=
default:"[no subject]"|truncatechars:100 }}</a></td>
>>                <td>{{ patch.submitter|personify:project }}</td>
>>                <td>{{ patch.state }}</td>
>>              <tr>
>> @@ -101,7 +107,7 @@ $(function () {
>>      <h3>Tests</h3>
>>
>>      <div class=3D"well transparent">
>> -      <div class=3D"panel-group" id=3D"test-accordion" role=3D"tablis=
t" aria-multiselectable=3D"true">
>> +      <div class=3D"panel-group" id=3D"test-accordion" role=3D"tablis=
t" aria-multiselectable=3D"true" data-toggle=3D"tooltip" title=3D"Click t=
o view/hide available test results">
>>          {% for test_result in revision.test_results %}
>>          {% include "patchwork/test-result.html" %}
>>          {% endfor %}
>> @@ -114,6 +120,8 @@ $(function () {
>>  {% endfor %}
>>    </div>
>>
>> +  <div id=3D"patch-view" class=3D"container-fluid"></div>
>> +
>>  </div>
>>
>>  {% endblock %}
>> --
>> 1.9.1
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

--=20
Jose Lamego | OTC Embedded Platforms & Tools | GDC


--HeGT0vFkabxVgkSikWHkWhhXk4VRmPR3h--

--6wB75Mer5HoHPl8cHOhgXtadSAP2E6Kb5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQEcBAEBAgAGBQJYc/DOAAoJEFJAtowlSEbnvoIH/iW7yTtfKVssQmU2g0TEIZvz
FeJESXC1i+jCZtpdp9+bMWP8K9oCzEeKwj5IqI0fQXXTgUcxnVPdp1OCGlQVPlVe
6nHKDYyp44Gk097YSxQB41q+ebSYIrYrSFDj6Tzs4zGJCTPn6f2hreoVSlNA9qNu
L/M/+SRoj3gaFw9k4k1FuI/HFH5z3yMWTYhiObYGpkfMR/Md7beMLyCvnRYFGjQh
0E1pPpWGGzlF5bmAvcLM8jeQ/rEesN4trphudl+K//1a8Oi4WzQR/ehftYqFhNKe
cSyEnwAAZIqNy+vYV82eVjQtc4O08Z4P989yxy3nXKpIhUg04RyDVw5ia3I3T+Q=
=uTqe
-----END PGP SIGNATURE-----

--6wB75Mer5HoHPl8cHOhgXtadSAP2E6Kb5--
